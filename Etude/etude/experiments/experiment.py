# -*- coding: utf-8 -*-
from etude.utils.mylogging import LoggedClass


class Experiment(LoggedClass):
    logname = None
    replace = None
    keep_temp = None
    exp_name = None
    exp_prefix = None
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
        raise NotImplementedError()

    def config_inputs():
        pass

    def config_outputs():
        pass

    def generate_dependencies(self, ):
        # to have no conflict with the replace argument, we have to store in a
        # dict dependencies already satisfied
        raise NotImplementedError()

class MonoExperiment(Experiment):
    a = None
