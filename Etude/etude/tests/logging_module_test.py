# -*- coding: utf-8 -*-
#from nose.tools import *
#import sys
#sys.path.insert(1, '/home/magma/projects/dicf/Etude/')
#print sys.path
#sys.path.insert(0, '/path/to/directory/two')

import sys
print sys.path
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
        self.log.info('sfsfsf')
        try:
            self.subm1(12)
            self.log.info('111111111111111111')
        except:
            pass
        try:
            self.subm2(34)
            self.log.info('22222222222')
        except:
            pass

    @LoggedClass.logged()
    def subm1(self, a):
        raise exceptions.BaseException('trtrtrt')

    @LoggedClass.logged()
    def subm2(self, b):
        raise exceptions.TestError('testError')


class TestPartitioning:

    def setup(self):
        print ("TestUM:setup() before each test method")

    def teardown(self):
        print ("TestUM:teardown() after each test method")

    @classmethod
    def setup_class(cls):
        print ("setup_class() before any methods in this class")

    @classmethod
    def teardown_class(cls):
        print ("teardown_class() after any methods in this class")

    def test_LoggedClass(self):
        print 'test_numbers_5_6()  <============================ actual test code'
        assert 5 * 6 == 30

        a = A('test_log', 'qwe')
        a.m1('aa', 'bb')
        # now check manually if in the root folder of your project, the files
        # have been properly generated ^^
        # TODO automate this

    def test_LoggedExperiment(self):
        pass


if __name__ == '__main__':

    print 'test_numbers_5_6()  <============================ actual test code'
    assert 5 * 6 == 30

    a = A('test_log', 'qwe')
    a.m1('aa', 'bb')
    # now check manually if in the root folder of your project, the files
    # have been properly generated ^^
    # TODO automate this

    print "the end my only friend"
