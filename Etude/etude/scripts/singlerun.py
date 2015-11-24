# -*- coding: utf-8 -*-
import my_path #all scripts must import this
import argparse
import os
import etude.experiments.singlerunner as singlerunner


"""
ici les arguments ne sont pas tout a fait les memes que dans les autres
problemes : ex = infile contient le path, alors que dans les autres cas,
il est séparé avec infile_path

Here, the arguments are not exactly the same than thoses used in more
general experiments

-> HERE : infile includes the path,
OTHER experiments : infile is the pb filename and
                    infile_path is the path of this problem
"""


def define_arguments():
    parser = argparse.ArgumentParser(description='Process to test the DCIF.')
    parser.add_argument(
        'infile',
        help="""input file with ext .sol""")

    parser.add_argument(
        'outfile',
        help='output filename for sol stats (ext .csv will be added)')

    parser.add_argument(
        '-m', '--method', default='DICF-PB-Async',
        help="""method used for DCIF : Async,  token, or star-based
        choices=[DICF-PB-Async, DICF-PB-Token, DICF-PB-Star]""")

    parser.add_argument(
        '-v', '--verbose', action='store_true')

    parser.add_argument(
        '-n', '--numagent', type=int,
        help="""an integer for the number of agents on which it is
        distributed""")

    parser.add_argument(
        '-t', '--timeout', type=int,
        help="""an integer for the timeout""")

    parser.add_argument(
        '--var',
        help="""var=varSuffix
        the variant file has this suffix with as radical the original .sol
        (should begin by _).""")

    parser.add_argument(
        '--agdist', choices=['naive_eq', 'kmetis'], default='kmetis',
        help="""Agent-partitioning method
        naive_eq= equivalent-size partitions based on lines indexes(contiguous)
        kmetis= equivalent-size partitions mimimizing the number of connexions
        between partitions
        not used :[naive_indent= partitions]""")

    parser.add_argument(
        '--tpdist',
        choices=['naive_short', 'kmetis', 'naive_eq', 'original'],
        default=['original'],
        # here FORCE 2 ARGS to BE GIVEN !! and if kmetis or naiveEq, it will need also a number of agents
        # if no agent is given, it will rely on the numagents given (default usage), assign it if arg is None
        help="""TopClause/Axiom-partitioning method
        !When using one of these methods, aport of original, the initial
        top_clauses will not be considered (they will be reset) !
        naive_short= transforms the  $tpprop$ shortest clauses to TopClauses
        original= leaves the top_clauses/axioms inplace, might lead to error as
        there can be none
        we use uniform_shortdist by default for this,
        and we may need number of partitions, if not provided, use numagents
        'kmetis'=in partitions generated, transforms the shortest clauses uniformly to TP
        'naive_eq'= same than kmetis""")

    parser.add_argument(
        '--tpprop',
        help="""pourcentage of Top_clause in the TPdistribution computed
        will be used only if TPdist != 'original'
        """)

    parser.add_argument(
        '--csq',
        help='outputfilename for csq')

    parser.add_argument(
        '--replace', action='store_true',
        help="""Replaces all files if existing,
        overrides replace method in dependencies""")

    parser.add_argument(
        '--nogen',
        help="""do not generate any dependency & use only existing files
        the experiment might be interrupted if all its
        dependencies are not satisfied, default is gen
        quite useless argument...""",
        action='store_true')

    return parser

if __name__ == '__main__':
    print('WORK DIR: ' + os.getcwd() + "\n")
    parser = define_arguments()
    args = parser.parse_args()
    argsDict = vars(args)
    print 'les arguments passés sont :', argsDict
    singlerunner.main(argsDict)
