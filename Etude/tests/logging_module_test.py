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
        self.log.info('sfsfsf')
        try:
            self.subm1(12)
        except:
            pass
        try:
            self.subm2(34)
        except:
            pass

    @LoggedClass.logged()
    def subm1(self, a):
        raise Exception('trtrtrt')

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

    def test_numbers_5_6(self):
        print 'test_numbers_5_6()  <============================ actual test code'
        assert 5 * 6 == 30

        a = A('test_log', 'qwe')
        a.m1('aa', 'bb')
        # now check manually if in the root folder of your project, the files
        # have been properly generated ^^
        # TODO automate this
