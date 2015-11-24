from etude.utils.mylogging import LoggedClass

"""
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
        self.logname = logname
        self.replace = replace
        pass

    @genFileDecorator
    @LoggedClass() #take care to closure !
    def generate_variant(self, filename, ext):
        """
"""        args = java_args+[MAKESOLVARIANT_JAR]+['-method='+argsDict['methodVar'],'-len='+argsDict['length'],'-d='+argsDict['depth'],argsDict['infile_path']+argsDict['infile'], argsDict['outfile']]
        log = jarWrapper(*args)  
        addToLog(log_file,log)
"""        """
        with open(filename + ext, 'w') as csvfile:
            pass


class TestTemplate:
    def test_numbers_5_6(self):
        handler = FileHandler('decoratorTest', replace = True)
        handler.generate_variant()
"""