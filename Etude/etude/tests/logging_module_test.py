# -*- coding: utf-8 -*-
from nose.tools import *

import etude.exceptions as exceptions
import logging
from etude.utils.mylogging import LoggedClass

class A(LoggedClass):

    def __init__(self, logname, a):
        super(self.__class__, self).__init__(logname)
        self.a = a

    @LoggedClass.logged()
    def m1(self, a, b):
        print 'a'
        print self.a
        self.log.info('début du log m1')
        try:
            self.subm1()
            self.log.info('je ne dois pas logger ici 1')
        except:
            pass
        try:
            self.subm2()
            self.log.info('je ne dois pas logger ici 2')
        except:
            pass
        self.log.info('fin du log m1')

    @LoggedClass.logged()
    def subm1(self):
        raise exceptions.BaseException('je log baseException')

    @LoggedClass.logged()
    def subm2(self):
        raise exceptions.TestError('je log TestError')

    @LoggedClass.logged()
    def deep_exception(self):
        self.log.info('début du log deep exception')
        self.subm1()



class TestPartitioning:
    def test_LoggedClass(self):
        """
            checks normal logging behaviour :
                -normal flow = all in test_log.log
                -errors and warnings only in root.stderr.log
        """
        a = A('test_log', 'qwe')
        a.m1('aa', 'bb')
        # now check manually if in the root folder of your project, the files
        # have been properly generated ^^
        # TODO automate this !

    def test_LoggedExperiment(self):
        pass

    def test_NestedExceptions(self):
        """
            checks if an exception raised will be logged only once
        """
        a = A('test_log', 'qwe')
        a.deep_exception()


if __name__ == '__main__':
    a = A('logs/test_log', 'qwe')
    a.m1('aa', 'bb')
    a.deep_exception()
    print "the end my only friend"

    # now check manually if in the root folder of your project, the files
    # have been properly generated ^^
    # TODO automate this