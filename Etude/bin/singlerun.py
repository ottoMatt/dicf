# -*- coding: utf-8 -*-
import argparse
import os
import etude.problems.singlerunner as singlerunner


def define_arguments():    
    parser = argparse.ArgumentParser(description='Process to test the DCIF.')
    parser.add_argument('infile', 
                        help='input file with ext .sol \n For better project \
                        organization, it is recommended to put the .sol file in \
                        the ressources folder and to add the raltive path as an \
                        argumeent such as ressrouces/mock.sol')
                        
    parser.add_argument('outfile', 
                        help='output file for the debug (ext .csv will be added)')
    
    parser.add_argument('-m', '--method', default='DICF-PB-Async',
                        help='method used for DCIF : Async,  token, or star-based\
                        \nchoices=[DICF-PB-Async, DICF-PB-Token, DICF-PB-Star\]')
    
    parser.add_argument('-v', '--verbose', action='store_true')
    
    parser.add_argument('-n', '--numagent',type=int ,
                        help = 'an integer for the number of agents on which it is\
                        distributed')
    
    parser.add_argument('-t', '--timeout',type=int , 
                        help = 'an integer for the timeout')
    
    parser.add_argument('--var', 
                        help = 'var=varSuffix  use the variant with given suffix \
                        (should begin by _).')
    
    parser.add_argument('--par', choices=['naive_eq','kmetis'], default = 'kmetis',
                        help = 'type de partitionnement \n\
                        naive_eq= divise les clauses equitablement (ne regarde pas si top_clauses ou axiom) \n\
                        naive_indent= divise les clauses selon l indentation du fichier sol d origine (pareil que dessus)\n\
                        eq_par= répartit équitablement ET les axiomes ET les Top_clauses\
                        kmetis_hybrid\
                        ,kmetis')
    parser.add_argument('--dist',
                        help = 'distSuffix  use the distribution with given suffix (should begin by \"_\").");')
    parser.add_argument('--csq',
                        help = 'outputfilename for csq')
    parser.add_argument('--replace', action='store_true')
            
    return parser
parser = define_arguments()

if __name__ == '__main__':
    print('WORK DIR: '+os.getcwd() + "\n")
    parser = define_arguments()
    args = parser.parse_args()
    argsDict = vars(args)
    print 'les arguments passés sont :', argsDict
    singlerunner.main(argsDict)