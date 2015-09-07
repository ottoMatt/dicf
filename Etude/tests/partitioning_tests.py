# -*- coding: utf-8 -*-
# https://docs.python.org/3/library/unittest.html
# https://web.archive.org/web/20150315073817/http://www.xprogramming.com/testfram.htm
import os
from nose.tools import *
from etude.problems.partitioning import *
from etude.constants import *
from etude.utils.futils import *
TEST_PATH = TEMP_RSRC_PATH + 'tests/partitioning/'
fDCF = 'glucolysis_kmet4'
fSol = 'glucolysis'
fSol_unvalid = 'glucolysis_withoutTP'


class TestPartitioning:

    @classmethod
    def setup_class(cls):
        print('WORK DIR: ' + os.getcwd() + "\n")

    def setup(self):
        self.sol_filename = 'glucolysis'
        self.dcf_filename = 'glucolysis_kmet4'
        self.sol_unvalid_filename = 'glucolysis_withoutTP'
        self.f1 = FileSol(TEST_PATH, fSol)
        self.f1.load()

    def teardown(self):
        """ remove everything that has been generated"""
        pass

    def test_load_save(self):
        temp_outfilename = 'tempSol'
        self.f1.save(path=TEST_PATH, filename=temp_outfilename)
        f2 = FileSol(TEST_PATH, temp_outfilename)
        f2.load()
        for line1, line2 in zip(self.f1.lines, f2.lines):
            assert_equals(line1.data, line2.data)

    def test_validity_sol(self):
        assert(self.f1.is_valid())
        self.f1.reset_all_to_axioms()
        assert(not self.f1.is_valid())
       # self.f1.save(TEST_PATH+'TESTS')

    def test_TPdistribution1(self):
        res, nb = create_a_FileSol_wit_a_TP_distribution_naiveShort(
            self.f1, 10)
        res.save()

    def test_Agdistribution1(self):
        resNaive = create_dcf_Agent_distribution(self.f1, 2, method='naive_eq')
        resNaive.save()
        #resIndent =create_dcf_Agent_distribution(self.f1,2,method = 'naive_indent')
        # resIndent.save()
    '''
    def test_split(self):
        self.assertEqual(s.split(), ['hello', 'world'])
        # check that s.split fails when the separator is not a string
        with self.assertRaises(TypeError):
    '''

    def test_dcf_valid(self):
        file_sol_unvalid = FileSol(TEST_PATH, self.sol_unvalid_filename)
        file_sol_unvalid.load()
        file_dcf_unvalid = create_dcf_Agent_distribution(file_sol_unvalid, 2)
        file_dcf_unvalid.load()

        assert(not file_dcf_unvalid.is_valid())
        file_dcf = FileDCF(TEST_PATH, self.dcf_filename)
        file_dcf.load()
        assert(file_dcf.is_valid())

    def test_dcf_to_sol(self):
        file_sol_unvalid = FileSol(TEST_PATH, self.sol_unvalid_filename)
        file_sol_unvalid.load()
        file_dcf_unvalid = create_dcf_Agent_distribution(file_sol_unvalid, 2)
        file_dcf_unvalid.save()

        file_dcf = FileDCF(TEST_PATH, self.dcf_filename)
        file_dcf.load()

        solres = file_dcf.toSol()
        solres.save(path=TEST_PATH, filename='test1tosol')
        solres = file_dcf_unvalid.toSol()
        solres.save(path=TEST_PATH, filename='test2tosol')

    def test_TPdistributionEachAgent(self):

        file_dcf = FileDCF(TEST_PATH, self.dcf_filename)
        file_dcf.load()
        solres = create_a_FileSol_wit_a_TPdistribution_for_each_agent(
            file_dcf, 20)
        solres.save()
