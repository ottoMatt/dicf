# -*- coding: utf-8 -*-
from etude.constants import *
import etude.utils.sysutils as sysutils
import etude.utils.futils as futils
import etude.problems.partitioning as par
import os
def generateFile(outfile, fun,replace = False,*funargs):
    '''
    on overrride le replace des fonctions existantes en regardant nous-même
    si le outfile existe et si replace alors le suppri,er avant d'Executer la fun
    permet ainsi d'être générique    
    le outifle doit zvoir le path et le ext
    '''
    if replace :
        try:
            os.remove(outfile)
            print 'removing old temporary file'
        except OSError:
            pass
    if  os.path.isfile(outfile)  :
        res = ['file already exist']
    else:
        res = fun(*funargs)
    return res
    
def generateDependencies(argsDict):
    if argsDict['dist'] != None :#if dist is passed, one should expect the file to be already generated
        return
    if (argsDict['numagent'] == None) or (argsDict['numagent'] == 1 ) :
        print 'MONO AGENT, by default'
        #check if method basée est bien celle la : facultatif
        if  argsDict['method'] != 'SOLAR-Inc-Carc':
            print 'Methode Mono Agent non passée, mis par défaut en mode Mono'
            argsDict['method'] = 'SOLAR-Inc-Carc'
    else:#else we would seek to compute the partition
        temp_graph_filename=GEN_PATH + 'temp_graph'
        if  argsDict['par'] ==  'kmetis':
            dist_suffix = '_kmet'+str(argsDict['numagent'])
            argsDict['dist'] = dist_suffix
            
            
            print 'buildGRAPH ################################################'  
            outfile = temp_graph_filename+'.gra'
            args = ['-jar', BUILDGRAPH_JAR, argsDict['infile'], temp_graph_filename ]
            fun = sysutils.jarWrapper
            generateFile(outfile,fun, replace=argsDict['replace'], *args)
            
            
            
            ########kMetis
            print 'kMETIS ################################################'  
            outfile = temp_graph_filename+'.gra.part.'+str(argsDict['numagent'])
            args = [KMETIS_EX, temp_graph_filename+'.gra', str(argsDict['numagent']) ]
            fun = sysutils.exWrapper
            generateFile(outfile,fun, replace=argsDict['replace'], *args)
            ########graph2DCF
            print 'graph2DCF ################################################'  
            outfile=argsDict['infile'][:-4]+dist_suffix+'.dcf'
            args = ['-jar',GRAPH2DCF_JAR, argsDict['infile'], temp_graph_filename+'.gra.part.'+str(argsDict['numagent']), argsDict['infile'][:-4]+dist_suffix ]
            result = sysutils.jarWrapper
            generateFile(outfile,fun, replace=argsDict['replace'], *args)
            
        elif argsDict['par'] == 'naive_eq' :#non testé
            dist_suffix = '_naiveEq'+str(argsDict['numagent'])
            argsDict['dist'] = dist_suffix
            
            print 'naivePARTITIONING ################################################'  
            outfile = temp_graph_filename+'.gra.part.'+str(argsDict['numagent'])
            args = [argsDict['infile'], temp_graph_filename, argsDict['numagent']]
            fun = par.divEquNaive
            generateFile(outfile,fun, replace=argsDict['replace'], *args)
            
            ########graph2DCF
            print 'graph2DCF ################################################' 
            outfile=argsDict['infile'][:-4]+dist_suffix+'.dcf'
            args = ['-jar',GRAPH2DCF_JAR, argsDict['infile'], temp_graph_filename+'.gra.part.'+str(argsDict['numagent']), argsDict['infile'][:-4]+dist_suffix ]
            result = sysutils.jarWrapper
            generateFile(outfile,fun, replace=argsDict['replace'], *args)
        elif argsDict['par'] == 'kmetis_hybrid':
            pass#not yet implemented

def main(argsDict):
    print 'CFLAUNCHER MULTI ################################################' 
    generateDependencies(argsDict)
    JAVA_ARGS = ['-jar']
    args = futils.computeArgs(CFLAUNCHER_JAR,argsDict,exe_args=JAVA_ARGS)
    print 'ZISI ARGS',args
    result = sysutils.jarWrapper(*args)  
    print result[-20:]
    log_f= [GEN_PATH, os.path.basename(argsDict['infile'])[:-4], argsDict['var'], argsDict['method']]
    log_filename = "".join(log_f)
    sysutils.writeToLog(log_filename, result)

