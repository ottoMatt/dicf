# -*- coding: utf-8 -*-
"""
replace decorator shouldnt be here...
Decorator

import types
>>> a.barFighters = types.MethodType( barFighters, a )
>>> a.barFighters


do decorate methods inside an object or return an ensemble of decorated methods..
"""

"""
    The only way I have found to make decorators truly dynamically parameterized (with a true variable and not a constant set ),
    is to define the decorated function in am object which holds a certain attribute that the decorator will look into.

    The decorator is static and it signature has no dependencies but its behaviour depends on an attribute held by the object.

    Here we provide an class with decorator as well as a single method decorator wih will og to a default file.
    """
from etude.exceptions import SignatureDecoratorError
from functools import wraps
import os

class DynamicDecorator(object):
    def __init__(self):
        pass

    def add_function_to_decorate(self, fun, lDec, lArgsDec):
        """
        dans cette solution on ajoute plusieurs decorateurs les uns à la
        suite des autres ...

        jene sais pas encore si on met ça dans un objet decorator ou si on
        stockera juste ça dans un autre objet créé dans create dependencies
        """
        fun_name = fun.__name__
        for decorate, args in zip(lDec, lArgsDec):
            fun = decorate(fun, args)
        self.__dict__[fun_name] = fun
        return fun
    def add_function_to_decorate(self, fun, dec, args):
        """
        version atomique
        """
        fun = dec(fun, args)
        self.__dict__[fun_name] = fun
        # or this
        return fun

def loggedDecorator():
    pass

#write : replace(True) func
def replaced(replace):
    def decorate(func):
        @wraps(func)
        def wrapper(*args, **kwargs):
            print args
            print kwargs
            '''
            could we do this with a decorator ?
            using named Fields ? ugly ?
            anyway it is since it requires to "predict" the output of the fun...

            on overrride le replace des fonctions existantes en regardant nous-même
            si le outfile existe et si replace alors le suppri,er avant d'executer
            la fun permet ainsi d'être générique
            le outifle doit zvoir le path et le ext

            use exception/error ? : not respecting args Contract for replace Decorator

            hyp : outfile est l'nuique changement apporté par la funciton...
            (funciton non excécutré dans le cas ou replace = false et si le fichier existe)
            '''
            try:
                outfile = kwargs['outfile']

            except KeyError: # key eror
                raise SignatureDecoratorError("missing argument \"outfile \" in signature")
            if replace:
                try:
                    os.remove(outfile)
                    print 'removing old temporary file'
                except OSError:
                    pass
            if os.path.isfile(outfile):
                res = ['file already exist']
                print res
            else:
                try :
                    print 'create file'
                    res = func(*args, **kwargs)
                    print 'return res'
                except Exception as e:
                    print 'replace exception'
                    raise
                
            return res
        return wrapper
    return decorate



"""
test in ipython
def replaced(replace):
      def decorate(func):
                @wraps(func)
                def wrapper(*args, **kwargs):
                    kwargs['dec'] = 'decorated'

def f1(a, **kwargs):
    print a
    try :
        print kwargs['dec']
    except:
        print 'no decorate'

replaced(True)(f1)
"""