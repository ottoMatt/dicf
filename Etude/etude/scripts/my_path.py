import os, sys

"""
allow to set the right path in order to run the scripts in the scripts inside this folder

do we don t have to use the setup.py install to set the correct path

When in developmenetm when running single files within folders, the best way to ensure to make python know your packages is to go to the top of the workspace and excecute your file like so, :
in this example I want to run the file logging_module_test 
go to ~/projects/dicf/Etude
⇒  python -m etude.tests.logging_module_test

Yes... Python's weird module system...

if someone wants to put it into production with a proper install, one should cancel the code here to avoid the double imports trap.
cf. http://python-notes.curiousefficiency.org/en/latest/python_concepts/import_traps.html
"""
#thisdir = os.path.dirname(__file__)
#libdir = os.path.join(thisdir, '../relative/path/to/lib/from/bin')
workdir = os.path.dirname(os.path.realpath(__file__))[-8]
print 'eee',os.path.dirname(os.path.realpath(__file__))
workdir = os.path.dirname(os.path.realpath(__file__))
workdir = workdir[:-14]#ugly, like your mother
print workdir
if workdir not in sys.path:
    sys.path.insert(0, workdir)
import etude
#import singlerun
