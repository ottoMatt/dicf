# -*- coding: utf-8 -*-
from nose.tools import *
from etude.constants import *
from etude.utils.argsGenerator import ArgsGenerator


class TestArgsGenerator:
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
        argsgen = ArgsGenerator()
        arg1 = dict()
        arg1['fname'] = 'gluco'
        arg2 = dict()
        arg2['fname'] = 'gluco'
        argsgen.add_arg(arg1)
        # find the exact syntax!!
        argsgen.add_dim(
            'var', ['all', {'max-': [1, 2], 'min-':[4, 5]}], cond="'min-4' in value")
        argsgen.add_dim('TPdist',
                        {'naiveshortdist': [1, 2, 3, 4, 5],
                         'kmet-': {'uniformshortdist': [1, 2, 3, 4, 5]},
                         'naiveEq-': {'uniformshortdist': [1, 2, 3, 4, 5]}
                         })
        res = argsgen.generate()  # only on dimensions
        print res
