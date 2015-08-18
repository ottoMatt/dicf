# -*- coding: utf-8 -*-
from etude.constants import *
import etude.utils.sysutils as sysutils
import etude.utils.utils as utils
import etude.problems.partitioning as par
import os

def generateDependencies(argsDict):
    if argsDict['dist'] != None :
        return
    if (argsDict['numagent'] == None) or (argsDict['numagent'] == 1 ) :
        print 'MONO AGENT, by default'
        #check if method basée est bien celle la : facultatif
        if  argsDict['method'] != 'SOLAR-Inc-Carc':
            print 'Methode Mono Agent non passée, mis par défaut en mode Mono'
            argsDict['method'] = 'SOLAR-Inc-Carc'
    else:
        temp_graph_filename=GEN_PATH + 'temp_graph'
        if  argsDict['par'] ==  'kmetis':
            ########On utilise un partitionnement un peu opti:
            ########buildGraph    
            try:
                os.remove(temp_graph_filename+'.gra')
                print 'removing old temporary file'
            except OSError:
                pass
            print 'buildGRAPH ################################################'   
            args = ['-jar', BUILDGRAPH_JAR, argsDict['infile'], temp_graph_filename ]
            result = sysutils.jarWrapper(*args)
            
            dist_suffix = '_kmet'+str(argsDict['numagent'])
            argsDict['dist'] = dist_suffix
            ########kMetis
            print 'kMETIS ################################################'  
            args = [KMETIS_EX, temp_graph_filename+'.gra', str(argsDict['numagent']) ]
            result = sysutils.exWrapper(*args)
            ########graph2DCF
            print 'graph2DCF ################################################'  
            args = ['-jar',GRAPH2DCF_JAR, argsDict['infile'], temp_graph_filename+'.gra.part.'+str(argsDict['numagent']), argsDict['infile'][:-4]+dist_suffix ]
            result = sysutils.jarWrapper(*args)
        elif argsDict['par'] == 'naive_eq' :#non testé
            print 'naivePARTITIONING ################################################'  
            par.divEquNaive(argsDict['infile'], temp_graph_filename, argsDict['numagent'])
            ########graph2DCF
            print 'graph2DCF ################################################' 
            args = ['-jar',GRAPH2DCF_JAR, argsDict['infile'], temp_graph_filename+'.gra.part.'+str(argsDict['numagent']), argsDict['infile'][:-4]+dist_suffix ]
            result = sysutils.jarWrapper(*args)

def main(argsDict):
    print 'CFLAUNCHER MULTI ################################################' 
    generateDependencies(argsDict)
    JAVA_ARGS = ['-jar']
    args = utils.computeArgs(CFLAUNCHER_JAR,argsDict,exe_args=JAVA_ARGS)
    print 'ZISI ARGS',args
    result = sysutils.jarWrapper(*args)  
    print result[-20:]
    log_f= [GEN_PATH, os.path.basename(argsDict['infile'])[:-4], argsDict['var'], argsDict['method']]
    log_filename = "".join(log_f)
    sysutils.writeToLog(log_filename, result)

