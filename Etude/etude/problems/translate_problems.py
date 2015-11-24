# -*- coding: utf-8 -*-

from commons import *
import etude.constants as csts
import partitioning as par
import os
import fnmatch

'''
generate only the tptp wih top clauses
'''
'''
TCONTCONJ_FULLNEWC # considers axioms and hypotheses as axioms, negated_conjecture as top-clause, and use the whole vocabulary as pf
TCONJ_REFUT #: considers axioms and hypotheses as axioms, negated_conjecture as top-clause, and tries to find contradiction in the Newcarc
THYP_FULLNEWC# : considers axioms and negated_conjecture as axioms, hypothesis as top-clauses, and use the whole vocabulary as pf
THYP_REFUT #: considers axioms and negated_conjecture as axioms, hypothesis as top-clauses, and tries to find contradiction in the Newcarc
TCH_FULLNEWC #: considers only axioms as axioms, hypothesis and negated_conjecture as top-clause, and use the whole vocabulary as pf
TCH_REFUT #: considers only axioms as axioms, hypothesis and negated_conjecture as top-clause and tries to find contradiction in the Newcarc
THYP_NCONJ_NEWC #: considers axioms as such and hypotheses as top-clauses, and use the vocabulary of conjecture to make the production field
ABDUCTION #consider axioms as such and negated_conjecture as top-clauses and use the vocabulary of negated hypothesis to make the production field
'''
LP2SOL_PARAMS = ['TCONTCONJ_FULLNEWC','TCONJ_REFUT','THYP_FULLNEWC','THYP_REFUT','TCH_FULLNEWC','TCH_REFUT','THYP_NCONJ_NEWC','ABDUCTION']

MAX_NB_LINES = 900#reject p problems wit more thant 500 lines... ? or better for distribution
MIN_NB_LINES = 100
java_args = ['-jar']
def translate_TPTP_problems(problemsDir):
    '''
    do no cut for now... maybe later
    '''
    for root, dirnames, filenames in os.walk(problemsDir):
        for base_filename in remove_ext(fnmatch.filter(filenames, '*.p'),'.p'):
            #on ne prend pas les problèmes avec plus de 800 lignes...
            solDir = root + '/' + base_filename
            make_dirs_safe(solDir)
            infile=root+'/'+base_filename+'.p'
            with open(infile, 'r') as pfile:
                size = len(pfile.readlines())
                print size
            if size >= MAX_NB_LINES or size < MIN_NB_LINES:
                continue
            if os.listdir(solDir) != [] :
                continue
            
            
            for meth in LP2SOL_PARAMS :
                outfile_name = base_filename+'_'+meth
                outfile_path=root+'/'+base_filename+'/'
                args = JAVA_ARGS + [P2SOL_JAR, infile, outfile_path+outfile_name ]
                print args
                res = jarWrapper(*args)                
problemsDirTPTP= 'Problems/TPTP_gen'     

def translate_cnf_to_sol_tree (newWrkDir, gen):
    matches = []
    print('WORK DIR: '+os.getcwd() + "\n")
    oldWrkDir = os.getcwd()
    
    os.chdir(newWrkDir)
    java_args = ['-jar']
    for root, dirnames, filenames in os.walk('.'):
        print root
        newDir = '../'+gen_path+root
        make_dirs_safe(newDir)
        print newDir
        for base_filename in remove_ext(fnmatch.filter(filenames, '*.cnf'),'.cnf'):
            print base_filename        
            infile = root+'/'+base_filename
            outfile = '../'+gen_path+root+'/'+base_filename
            args = java_args + [csts.CNFSAT2SOL_JAR, infile, outfile ]
            print args
            res = jarWrapper(*args)
            print res
        
    print('WORK DIR: '+os.getcwd() + "\n")
    print matches
    
    os.chdir(oldWrkDir)
    print('WORK DIR: '+os.getcwd() + "\n")


if __name__ == '__main__':
    #get args
    newWrkDir = 'Problems/SAT/'
    gen_path = 'SATgen/'
    translate_cnf_to_sol_tree(newWrkDir, gen)
    pass