# -*- coding: utf-8 -*-
from etude.utils.mylogging import LoggedClass
from etude.utils.decorator import *
import os
import etude.exceptions as exceptions

# not gonna work this way...
def genFileDecorator(outfile = None, fun = None, replace = False, *funargs):
    if replace:
        try:
            os.remove(outfile)
            print 'removing old temporary file'
        except OSError:
            pass
    if os.path.isfile(outfile):
        res = ['file already exist']
    else:
        res = fun(*funargs)
    return res


class FileHandler(LoggedClass):
    def __init__(self, logname, replace = False):
        super(self.__class__, self).__init__(logname)
        self.logname = logname
        self.replace = replace

    @LoggedClass.logged()
    @replaced(True)
    def generate_variant_static(self, outfile=''):
        """
            create the file
        """
        print 1
        with open(outfile, 'w') as csvfile:
            print 2
            pass
        print 3
        raise exceptions.BaseException('je suis une exception générée à la fin')

        print 5

    def generate_variant_dynamic(self, outfile=''):
        """
            create the file
        """

        with open(outfile, 'w') as csvfile:
            pass
        raise exceptions.BaseException('je suis une exception générée à la fin')

class TestDecorator():
    """
        dynamically decorate or not ??

        test both approaches : @decorate and dynamic decorate
    """
    def test_numbers_5_6(self):
        print 11
        handler = FileHandler('decoratorTest', replace = True)
        outfile = 'logs/outfile.txt'
        handler.generate_variant_static(outfile = outfile)

import types
if __name__ == '__main__':
    handler = FileHandler('logs/decoratorTest', replace = True)
    outfile = 'logs/outfile.txt'
    #handler.generate_variant_static(outfile = outfile)
    replace = True
    handler.generate_variant_dynamic = types.MethodType( replaced(replace)(generate_variant_dynamic), handler )
    handler.generate_variant_dynamic(outfile = outfile)
    print 999
    # now check manually if in the root folder of your project, the files
    # have been properly generated ^^
    # TODO automate this