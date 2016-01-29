# -*- coding: utf-8 -*-
from etude.utils.mylogging import LoggedClass
"""
"""

class Experiment(LoggedClass):
    #id experiment
    logname = None
    exp_name = None
    exp_prefix = None #what is this ? is this when we want to lauch multiple (independent) parts of the same experiment
    #behaviour
    keep_temp = None
    replace = None
    #config
    problem_path = None 
    heapsize = None 

    def __init__(
            self,
            logname,
            exp_name='exp',
            exp_prefix='',
            problem_path='',
            replace=True):
        LoggedClass.__init__(self, logname)
    # self.__dict__ = kwargs

        self.logname = logname
        self.exp_name = exp_name
        self.exp_prefix = exp_prefix
        self.problem_path = problem_path
        self.replace = replace

    def read_args(self, infile):
        pass

    def main():
        #generate args and check with existing outputs in stats files based on experiment name 
        raise NotImplementedError()

    def config_inputs():
        pass

    def config_outputs():
        pass

    def generate_dependencies(self, ):
        # to have no conflict with the replace argument, we have to store in a
        # dict dependencies already satisfied

        #create a module dependencies with static methods

        #have a dependencie object class created with a logged function and a decorator class
        #it looks inside the functions and if the outfile field  and replace exists it will apply its behaviour
        #else it wil lraise an exception adn not an error

        #log evenly too so do not put logged everywhere 


        # decorate dependencies with what we desire

        # call dependencies based on args of dicts
        raise NotImplementedError()

class MonoExperiment(Experiment):
    a = None
