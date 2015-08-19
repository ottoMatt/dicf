# -*- coding: utf-8 -*-
from etude.exceptions import *
import etude.utils.futils as futils
import re
import random
import copy
#old version of partitioning, still used for singlerunner
def annotateLines(f):
    """
    annotate lines with information used for partitioning
    such as axiom/tp, and index 
    """
    l = []
    nbClauses=0
    nLines=0
    for line in f:
        print line
        if line[:3] == 'cnf':
            if 'top_clause' in line :
                l.append(('cnf',line,nbClauses,'top_clause'))
            else:
                l.append(('cnf',line,nbClauses,'axiom'))
            nbClauses += 1
        elif line[:1] == '%':
            pass
        elif line[:2] == 'pf':
            pass
        elif line.isspace():
            l.append(('blank',''))
        else:
            print 'error : .sol file contains invalid or unknown lines'
        nLines+=1
    print 'nb de clauses : ',nbClauses
    return l, nbClauses
    
def filterClauses(l):
    '''
    ne garde que les clauses
    '''
    res = []    
    for line in l :
        if line[0] == 'cnf' :
            res.append(line)
    return res

def divEquNaive(infilename,outfilename, nbAgents):
    '''
    1ere naive : divides the clauses equally between the agents
    and writes the output in a .gro.part.N file
    '''
    f = open(infilename, 'r')
    lines, nbClauses = annotateLines(f)
    f.close()
    lines = filterClauses(lines)    
    
    sizeAgent = nbClauses/nbAgents     
    outfilename = outfilename+'.gra.part.'+str(nbAgents)
    outfile = open(outfilename, 'w')
    i = 0
    for c in futils.chunks(lines, sizeAgent):
        print c
        for line in c :
            print line, i
            outfile.write(str(i)+'\n')
        if i != nbAgents - 1 :
            i += 1
    outfile.close()    
    return 
#new version of partitioning
    
def create_a_FileSol_wit_a_TP_distribution_naiveShort(file_sol,perc, seuilMin=1) :
    '''
    TP = top_clause : args = percentage, seuil min
    return a new File Sol object with new distribution
    perc =[0, 100]
    
    faire une variante qui garde les TP originales ??
    pas RANDOM !! on prend les n premiers plus courtes dans l'ordre d'apparition !
    '''
    copy_lines = copy.deepcopy(file_sol.lines)
    clauses = [line for line in copy_lines if isinstance(line,futils.Clause)]
    otherlines = [line for line in copy_lines if not isinstance(line,futils.Clause)]
    
    clauses.sort(cmp=futils.comp_length_clauses)
    
    nbTP = perc/100.*len(clauses)      
    for index, clause in enumerate(clauses) :
        if index < seuilMin or index < nbTP :
            clause.transformToTP()
        else:
            clause.transformToAxiom()
    
    distributed_lines = clauses + otherlines   #on ne sort pas car on s'en fout, çaa sera fait après
    distrib_name =  '_TPnaiveshortdist_per'+str(perc)+'_'+'seuil'+str(seuilMin)
    filename = file_sol.filename + distrib_name
    return futils.FileSol(file_sol.path,filename = filename,lines=distributed_lines), int(nbTP)

def create_dcf_Agent_distribution(file_sol,nbAgents,method = 'naive_eq',outpath = None):
    '''
    on doit prendre en compte l'index des lignes désormais
    method = ['naive_eq', 'naive_indent'(if possible),'sol2dcf'] en cours de debug
    remarque, au lieu d'ecrie agent(agX) on ecrit agent(X) ne change rien normalement
    '''
    filename = file_sol.filename
    if outpath == None :
        outpath = file_sol.path
        
    if method == 'naive_eq':
        dcf_lines = naive_eq(file_sol,nbAgents)
        filename += '_naiveEq'+str(nbAgents)
        return futils.FileDCF(outpath,filename,lines= dcf_lines )
    elif method == 'kmetis':
        #execute the kmetis trnasifmantion
        filename += '_kmet'+str(nbAgents)
        outpath, outfilename = futils.generate_kmet_distribution_simple(nbAgents, file_sol.path, file_sol.filename, outfile_path=outpath, outfile_name=filename)
        res = futils.FileDCF(outpath, outfilename)
        res.load()
        return res
    '''
    elif method == 'naive_indent':
        dcf_lines = naive_indent(file_sol,nbAgents)
        filename += '_naiveEq'+str(nbAgents)
        return futils.FileDCF(outpath,filename,lines= dcf_lines )
    '''
        
def naive_eq(file_sol,nbAgents):    
    copy_lines = copy.deepcopy(file_sol.lines)
    
    clauses = [line for line in copy_lines if isinstance(line,futils.Clause)]
    pf = [line for line in copy_lines if 'pf(' in line.data]
    comments=[line for line in copy_lines if line.data.startswith('%')]
    
    clauses.sort(cmp=futils.comp_index)
    sizeAgent = len(clauses)/nbAgents     
    agent_clauses = []
    for indexAgent,c in enumerate(futils.chunks(clauses, sizeAgent)):
        if not indexAgent >= nbAgents :
            #on rajoute un agent que si c'est légal                 
            new_agent_line = futils.IndexedLine(0,'\nagent('+str(indexAgent) +').\n')
            agent_clauses.append(new_agent_line)
        for line in c :
            agent_clauses.append(line)         
    #on doit réindexer tout cela
    dcf_lines=[]
    for index, line in enumerate(comments + agent_clauses + pf) :
        line.index = index
        dcf_lines.append(line)
        
    return dcf_lines
    
#we are not using indent-partitioning
"""    
def naive_indent(file_sol,nbAgents):
    '''
    si pas d'indentation, on fail et renvoie exception qui devrait etre 
    catch.e bien plus haut... (niveau de la generattion de problemes)
    '''
    '''
    on commence par regarder le nombre de partitions qui existent dans l'indentation
    et on fait comme avec chunk la dessus aussi...
    '''
    file_sol.lines.sort(cmp=comp_index)
    partitions = []
    pf=[]
    comments=[]
    currentPartition=None
    
    for line in copy.deepcopy(file_sol.lines) :
        if not line.data or not(line.data.strip()):
            if currentPartition == None:
                currentPartition = []
            else:
                partitions.append(currentPartition)
                currentPartition = []
        if isinstance(line,Clause):
            currentPartition.append(line)
            
        elif 'pf(' in line.data :
            pf.append(line)
        elif line.data.startswith('%'):
            comments.append(line)
    if len(partitions) == 1 or len(partitions) < nbAgents:
        raise Exception('pas de fucking indentation suffisante pour fuckinf agent paritioning')
            #on chnunk sur le nbAgets
      
    agent_clauses = []
  #  print 'nbAg', nbAgents
   # print 'nbPartition', len(partitions)
    for indexAgent,p in enumerate(chunks(partitions, len(partitions)/nbAgents)):
        if not indexAgent >= nbAgents :                    
            new_agent_line = IndexedLine(0,'\nagent('+str(indexAgent) +').\n')
            agent_clauses.append(new_agent_line) 
        for line in merge_inner_lists(p):
            agent_clauses.append(line) 
            
    dcf_lines=[]
    for index, line in enumerate(comments + agent_clauses + pf) :
        line.index = index
        dcf_lines.append(line)
       
    return dcf_lines
"""

#filde DCF enentrée
       
def create_a_FileSol_wit_a_TPdistribution_for_each_agent(file_dcf,percTotal, seuilMin=1, method = 'short', outfilename = None):
    '''
    return a new sol with this distribution and a new dcf with a new filename
    percTotal = [0;100]
    
    on considere ici que toutes les clauses sont des axioms        
    method = ['random', 'short']
    '''
    pf=[]
    comments=[]
    #stocker pour chaque agent ses propres clauses 
    allAgentsClauses = []
    currentAgentClauses = []
    currentAgent=None
    
    nbClauses = 0
    nbAgents = 0
    
    for line in copy.deepcopy(file_dcf.lines) :
        if isinstance(line, futils.Clause):
            if currentAgent == None:
                raise Exception ('wtf on a des cnf dans un dcf alors quon a pas declaé d agents !!')
            currentAgentClauses.append(line)
            nbClauses += 1
        else:
            if line.data.startswith('agent(') :
                nbAgents +=1
                if currentAgent != None:
                    allAgentsClauses.append(currentAgentClauses)
                currentAgentClauses = []
                currentAgent = re.findall(r'\d+', line.data)[0]
            elif line.data.startswith('pf(') :
                  pf.append(line)
            elif line.data.startswith('%'):
                comments.append(line)
    #on recupere les clauses du dernier agent
    allAgentsClauses.append(currentAgentClauses)
           
    #le nbre de tp que l on ecrit effectivnet
    nbNewTp = 0
    #le nbre detop clauses que l on veut avoir a la fin
    nbTp = percTotal / 100. * nbClauses
    #nbre de clauses par agent
    nbClAg =  int(nbTp / nbAgents)
    for agentClauses in allAgentsClauses :
       # faire un random sans remise sur la longueur des agents clauses et les transformer puis incrementer le compteur
        #pas besoin de verifier si c'est deja TOP CLAUSE ou pas
        if len(agentClauses) == 0:
            raise EmptyAgentException('partition d un agent vide...')
        sizesample = min(nbClAg, len(agentClauses))  
        if method == 'random':
            indexesTP = random.sample(range(len(agentClauses)), sizesample)
        elif method == 'short':
            agentClauses.sort(cmp = futils.comp_length_clauses)
            indexesTP = range(sizesample)
        #prendre les npremeirs
        #permet de reset et de controler les vertiables parametres
        for c in agentClauses :
            c.transformToAxiom()
        for indexC in indexesTP :
            agentClauses[indexC].transformToTP()             
            nbNewTp += 1
    cpt = nbTp - nbNewTp
    agentClausesIndex = 0
    #on remplit les autres agents avec le nombre de TP restant
    while (cpt > 0 and nbNewTp != nbTp ):
        agentClauses = allAgentsClauses[agentClausesIndex]
        for c in agentClauses :
            if c.isAxiom():
                c.transformToTP()
                nbNewTp +=1
                break #cela veut dire qu'on a que des top_clause ici
        if nbNewTp >= nbTp:
            break
        #pire cas : on veut rajouter n top clauses a nu seul agent...
        cpt -= 1            
        agentClausesIndex = (agentClausesIndex + 1 )% len(agentClauses)
        

    sol_lines = comments + futils.merge_lists(allAgentsClauses) + pf
    if outfilename == None:
        outfilename = file_dcf.filename+'_TPuniform'+method+'dist_per'+str(percTotal)+'_'+'seuil'+str(seuilMin)
    return futils.FileSol(file_dcf.path,outfilename,ext ='.sol', lines = sol_lines )
    
