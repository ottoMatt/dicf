"""
Decorator
"""
from etude.exceptions import SignatureDecoratorError

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

def replaced(replace):
    def decorate(func):
        @wraps(func)
        def wrapper(*args, **kwargs):
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
                raise SignatureDecoratorError(
)
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
        return wrapper
    return decorate
