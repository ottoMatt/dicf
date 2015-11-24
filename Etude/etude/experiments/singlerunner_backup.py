# -*- coding: utf-8 -*-
# back up the 14th of septemberee, 8:11
"""
TODO rajouter le logging dedans (avec un paramètre en entrée,
# sinon génère automatiquement un fichier singleRun.log et écrit sur le stdout)
# réécrire le main ici dans une classe experiment
"""
from etude.constants import *
import etude.utils.sysutils as sysutils
import etude.utils.futils as futils
import etude.problems.partitioning as par
import os
from etude.experiments.experiment import Experiment
from etude.utils.mylogging import LoggedClass


def generate_file(outfile, fun, replace=False, *funargs):
    '''
    on overrride le replace des fonctions existantes en regardant nous-même
    si le outfile existe et si replace alors le suppri,er avant d'executer
    la fun permet ainsi d'être générique
    le outifle doit zvoir le path et le ext
    '''
    if replace:
        try:
            os.remove(outfile)
            print 'removing old temporary file'
        except OSError:
            pass
    if os.path.isfile(outfile):
        res = ['file already exist']
    else:
        res = fun(*funargs)
    return res


def generate_variant(argsDict, java_args=[]):
    args = java_args+[MAKESOLVARIANT_JAR]+['-method='+argsDict['methodVar'],'-len='+argsDict['length'],'-d='+argsDict['depth'],argsDict['infile_path']+argsDict['infile'], argsDict['outfile']]
    log = jarWrapper(*args)  
    addToLog(log_file,log)


def generate_dependencies(argsDict):
    # if dist is passed, one should expect the file to be already generated
    if argsDict['dist'] != None:
        return
    if (argsDict['numagent'] == None) or (argsDict['numagent'] == 1):
        # 'MONO AGENT, by default'
        # check if method basée est bien celle la : facultatif
        if argsDict['method'] != 'SOLAR-Inc-Carc':
            print 'Methode Mono Agent non passée, mis par défaut en mode Mono'
            argsDict['method'] = 'SOLAR-Inc-Carc'
    else:  # else we would seek to compute the partition
        temp_graph_filename = GEN_PATH + 'temp_graph'
        if argsDict['par'] == 'kmetis':
            dist_suffix = '_kmet' + str(argsDict['numagent'])
            argsDict['dist'] = dist_suffix

            # buildGraph
            outfile = temp_graph_filename + '.gra'
            args = ['-jar', BUILDGRAPH_JAR,
                    argsDict['infile'], temp_graph_filename]
            fun = sysutils.jarWrapper
            generateFile(outfile, fun, replace=argsDict['replace'], *args)

            # kMetis
            outfile = temp_graph_filename + \
                '.gra.part.' + str(argsDict['numagent'])
            args = [KMETIS_EX, temp_graph_filename +
                    '.gra', str(argsDict['numagent'])]
            fun = sysutils.exWrapper
            generateFile(outfile, fun, replace=argsDict['replace'], *args)

            # graph2DCF
            outfile = argsDict['infile'][:-4] + dist_suffix + '.dcf'
            args = ['-jar',
                    GRAPH2DCF_JAR,
                    argsDict['infile'],
                    temp_graph_filename + '.gra.part.' + str(argsDict['numagent']),
                    argsDict['infile'][:-4] + dist_suffix]
            result = sysutils.jarWrapper
            generateFile(outfile, fun, replace=argsDict['replace'], *args)

        elif argsDict['par'] == 'naive_eq':  # non testé
            dist_suffix = '_naiveEq' + str(argsDict['numagent'])
            argsDict['dist'] = dist_suffix

            # naivePARTITIONING
            outfile = temp_graph_filename + \
                '.gra.part.' + str(argsDict['numagent'])
            args = [
                argsDict['infile'], temp_graph_filename, argsDict['numagent']]
            fun = par.divEquNaive
            generateFile(outfile, fun, replace=argsDict['replace'], *args)

            # graph2DCF
            outfile = argsDict['infile'][:-4] + dist_suffix + '.dcf'
            args = ['-jar',
                    GRAPH2DCF_JAR,
                    argsDict['infile'],
                    temp_graph_filename + '.gra.part.' + str(argsDict['numagent']),
                    argsDict['infile'][:-4] + dist_suffix]
            result = sysutils.jarWrapper
            generateFile(outfile, fun, replace=argsDict['replace'], *args)
        elif argsDict['par'] == 'kmetis_hybrid':
            raise NotImplementedError()  # not the right exception...


class SingleRunner(Experiment):  # a single runner is an experiment !!
    """
    generate Dependencies -> computeArgs -> lauanch process 
    log through the different stages... decompose functions in a flat way

    when finished, might need to refactor this inside experiment

    we might create a module handling dependencies operations and initialize 
    a logger , allows to externalize this process and to have extensibility if needed 
    (only have to inherit and add a little case for new dependency)
    """
    def __init__(self, logname):
        pass

    @LoggedClass()
    def generateDependencies():
        pass


def main(argsDict):
    JAVA_ARGS = ['-jar']

    # TODO :here create an object experiment
    if argsDict['nogen']:
        generateDependencies(argsDict)

    args = futils.computeArgs(CFLAUNCHER_JAR, argsDict, exe_args=JAVA_ARGS)
    result = sysutils.jarWrapper(*args)

    log_f = [GEN_PATH, os.path.basename(
        argsDict['infile'])[:-4], argsDict['var'], argsDict['method']]
    log_filename = "".join(log_f)
    sysutils.writeToLog(log_filename, result)
