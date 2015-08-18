# -*- coding: utf-8 -*-
from nose.tools import *
import etude
import os
def setup():
    print "SETUP!"

def teardown():
    print "TEAR DOWN!"

def test_basic():
    print('WORK DIR: '+os.getcwd() + "\n")
    print "I RAN!"

def test_other():
    print "other"

 