# -*- coding: utf-8 -*-
import os
import re
from etude.constants import *
import etude.utils.sysutils as sysutils
def merge_lists(list_of_lists):
    merged_list = []
    for l in list_of_lists:
        merged_list += l
    return merged_list
def chunks(l, n):
    """Yield successive n-sized chunks from l."""
    for i in xrange(0, len(l), n):
        yield l[i:i+n]
        

def computeArgs(EXE,argsDict,exe_args=[]):
    args =  exe_args + [EXE]
    args = args + ['-method='+argsDict['method']]
    
    if argsDict['verbose'] == True :
        args.append('-verbose')
    if argsDict['timeout'] != None :
        args.append('-t='+str(argsDict['timeout']))
    if argsDict['var'] != None :
        args.append('-var='+argsDict['var'])
    if argsDict['dist'] != None :
        args.append('-dist='+argsDict['dist'])    
    if argsDict['csq'] != None :
        args.append('-csq='+argsDict['csq'])  
        
    #adding arguments at the end because (cf CfLauncher.java ^^).
    args = args + [argsDict['infile'], argsDict['outfile']]
    return args
    
    
def generate_kmet_distribution_simple(nbAgent,infile_path,infile_name,outfile_path = None,outfile_name=None) :
    java_args=['-jar']
    nbAgent = str(nbAgent)
    if outfile_path == None:
        outfile_path = infile_path
        
    if outfile_name == None:
        dist = '_kmet'+str(nbAgent)
        outfile_name = infile_name + dist
       
    if os.path.isfile(outfile_path+outfile_name+'.dcf') : 
         return outfile_path,outfile_name
         
    temp_graph_file=infile_path+outfile_name+'tempgraph'
    ########buildGraph    
    try:
        os.remove(temp_graph_file+'.gra')        
    except OSError:
        pass                
    args = java_args+[BUILDGRAPH_JAR]+[infile_path+infile_name, temp_graph_file ]
    log = sysutils.jarWrapper(*args)
    ########kMetis
    try:
        os.remove(temp_graph_file+'.gra.part.'+nbAgent)
    except OSError:
        pass
    args = [KMETIS_EX, temp_graph_file+'.gra', nbAgent]
    log = sysutils.exWrapper(*args)
    ########graph2DCF
    args = java_args+[GRAPH2DCF_JAR]+[infile_path+infile_name,temp_graph_file+'.gra.part.'+nbAgent, outfile_path+outfile_name+'.dcf']
    log = sysutils.jarWrapper(*args)
    #clean un peu...
    if os.path.isfile(temp_graph_file+'.gra') : 
        os.remove(temp_graph_file+'.gra')
    if os.path.isfile(temp_graph_file+'.gra.part.'+nbAgent) : 
        os.remove(temp_graph_file+'.gra.part.'+nbAgent)
    return outfile_path,outfile_name
class IndexedLine():
    '''
    might be a comment as well as a production field
    '''
    def __init__(self, index, data):
        self.data = str(data)
        self.index = index
        

class Clause(IndexedLine):
    def __init__(self, index,data):
        IndexedLine.__init__(self,index,data)
    def isTP (self):
        return 'top_clause' in self.data #top_clauseS ??
    def isAxiom(self):
        return 'axiom' in self.data
    def transformToTP(self):
        if not self.isTP():                
            newTP = re.sub(r'(cnf\(\w*,\s*)axiom(\s*,\s*\[[\w\-,\s]*\]\)\.)',
                '\\1top_clause\\2', self.data)
            self.data = newTP
    def transformToAxiom(self):
        if not self.isAxiom():
            newAxiom = re.sub(r'(cnf\(\w*,\s*)top_clause(\s*,\s*\[[\w\-,\s]*\]\)\.)',
                '\\1axiom\\2', self.data)
            self.data = newAxiom
    def nbCommas(self):
        '''        
        une heuristique peut etre de compter le nombre de virgules...
        a raffiner http://stackoverflow.com/questions/18906514/regex-for-matching-functions-and-capturing-their-arguments
        il faut faire un parser normalement
        '''        
        
        p = re.sub(r'(cnf\(\w*,)\s*\w*\s*,\s*\[([\w\-,\s]*)\]\)\.',
            '\\2', self.data)     
        newString,nbCommas = re.subn(',','', p)
        return nbCommas
        

def comp_index(obj1,obj2):  
    if (not isinstance(obj1,IndexedLine)) or (not isinstance(obj2,IndexedLine)) :
        raise Exception('Comparing objects which are not indexedLines')
    if obj1.index < obj2.index :
        return -1
    elif obj1.index > obj2.index :
        return 1
    else : 
        return 0

def comp_length_clauses(obj1,obj2):    
    if (not isinstance(obj1,Clause)) or (not isinstance(obj2,Clause)) :
        raise Exception('Comparing objects which are not clauses')
    if obj1.nbCommas() < obj2.nbCommas():
        return -1
    elif obj1.nbCommas() > obj2.nbCommas() :
        return 1
    else : 
        return 0


    
class FileBase(object):
    def __init__(self,path, filename, ext):
        self.filename = filename
        self.ext =ext
        self.path = path
    def load(self,path = None,filename = None,):
        if filename == None:
            filename = self.filename
        if path == None :
            path = self.path
        if not (os.path.isfile(path+filename+self.ext)):
            raise Exception( 'erreur, fichier :', path+filename+self.ext,'non present')
        f = open(path+filename+self.ext, 'r')
        self.lines=[]        
        
        for index, line in enumerate(f):
            if line.startswith('cnf'):
                self.lines.append(Clause(index,line))
            else:                
                self.lines.append(IndexedLine(index,line)) 
    def count_clauses(self):
        count = 0 
        for line in self.lines:
            if isinstance(line, Clause):
                count += 1
        return count
    def reset_all_to_axioms(self):
        for line in self.lines:
            if isinstance(line, Clause):
                line.transformToAxiom()
    def save(self, path = None,filename= None):
        if filename == None :
            filename = self.filename
        if path == None :
            path = self.path
        f = open(path+filename+self.ext, 'w')
        #let us sort our lines by index
        self.lines.sort(cmp=comp_index)# trie la liste 
        for index,line in enumerate(self.lines):
       #     if index != line.index :
      #          raise Exception('problem with the indexing of our lines...')#os this the right way to call an exception ?
            f.write(line.data)
        f.close()  
        

class FileSol(FileBase):
    def __init__(self, path, filename,ext ='.sol', lines = None):
        FileBase.__init__(self, path, filename, ext)
        self.lines  = lines
    def is_valid(self):
        '''doit contenir au moins une top_clause pour etre valide
        '''
        for line in self.lines:
            if isinstance(line,Clause):
                if line.isTP():
                    return True
        return False
    def load_file_sol_from_clauses(self,clauses):
        nbPrecLines = 0
        if self.lines != None:
            nbPrecLines = len(self.lines)
        else:
            self.lines= []
        for index, clause in enumerate(clauses):
            newIndex = index + nbPrecLines
            newClause = Clause(newIndex, clause)
            self.lines.append(newClause)
    def add_IndexedLine(self,lineData):
        '''
        pas une clause ici
        '''
        if self.lines != None :
            index = self.lines[-1].index + 1
        else :
            index = 0
        self.lines.append(IndexedLine(index, lineData))
        
class FileDCF(FileBase):
    def __init__(self,path,filename, ext = '.dcf',lines = None):
        FileBase.__init__(self,path,filename,ext)
        self.lines  = lines
    def is_valid(self):
        '''
        est valide si tous les agents ont au moins une clause et si au moins
        un agent a une Top_clause
        
        not checked
        '''
        allAgentsClauses = []
        otherlines =[]
        nbAgents = 0
        numAgents = []
        existTP = False
        currentAgent = None
        for line in self.lines :
            if isinstance(line,Clause):
                if currentAgent == None :
                    return False
                currentAgentClauses.append((currentAgent, line))
                if line.isTP():
                    existTP = True
            else:
                otherlines.append(line)
                if 'agent(' in line.data :
                    if currentAgent != None :
                        allAgentsClauses.append(currentAgentClauses)
                    currentAgent = re.findall(r'\d+', line.data)[0]
                    currentAgentClauses=[]
                    numAgents.append(currentAgent)
                    nbAgents += 1
        #instruction terminale car on ne le fait jamais sinon
        allAgentsClauses.append(currentAgentClauses)
        
        if not existTP:
            return False
        if nbAgents != len(set(numAgents)): #cela veut dire que le fichier est bizarrement écrit...
            return False
        for agentClauses in allAgentsClauses :
            if len(agentClauses) == 0 :
                return False
        return True
    def toSol(self):#on l'a externalisé parce que prend trop de place
        return dcf2sol(self)
 
    def get_pf(self):
        for line in self.lines:
            if line.data.startswith('pf'):
                return line.data
        raise Exception ('Pas de Pf dans le dcf !')

    def get_clauses_of_one_agent(self,numagent):
        print self.filename        
        print len(self.lines)
        
        clauses = []
        isAgent = False
        for line in self.lines:
            if 'agent' in line.data:
                currentAgent = int(re.findall(r'\d+', line.data)[0])
                if numagent != currentAgent :
                    isAgent = False
                else:
                    isAgent = True
            elif isinstance(line, Clause):
                if isAgent :
                    clauses.append(line.data)
        return clauses
        
def dcf2sol(dcfFile): 
    '''
    on se fiche des agents, on répercute uniquement les TP et les Axioms 
    ici on détruit toute indentation parce qu'on s'en fiche on suppose 
    qu'on a déja le partiotinnement entre agents
    a l. origine dans le .dcf
    '''
    clauses = []
    comments =[]
    pf=[]
    sol_lines=[]
    
    for line in dcfFile.lines :
        if isinstance(line,Clause):
            clauses.append(line)
        else:
            if 'agent' in line.data :
                pass
            elif 'pf(' in line.data :
                pf.append(line)
            elif line.data.startswith('%'):
                comments.append(line)
    for index, line in enumerate(comments + clauses + pf) :
        if isinstance(line,Clause):
            new_line = Clause(index, line.data)
        else:
            new_line = IndexedLine(index, line.data)
        sol_lines.append(new_line)
        
    return FileSol(dcfFile.path,dcfFile.filename,ext='.sol',lines = sol_lines)

    