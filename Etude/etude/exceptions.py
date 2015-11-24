"""
to be logged, an exception must not be caught in the same function where it was
raised (at least one level of difference).
"""

"""
tester le fait qu une exception n est log qu une seule fois meme 
quand elle passe par plsrs fonctoions decores par Logged
"""

class BaseException(Exception):
    def __init__(self, msg):
        Exception.__init__(self,msg) 
        self.logged = False
    #def set_exception_logged(self):
    #    self.logged = True

"""
Exceptions
used to convey logging informations for specific and rare events
(a too frequent occurence would be considered anormal)
"""




class EmptyAgentException(BaseException):
    pass


"""
Errors
used to convey logging informations for specific errors
leading to a crash
"""


class TestError(BaseException):
    pass

class NonSatisfiedDependencyError(BaseException):
    pass

class ExternalError(BaseException):
    """
    error occuring in an external module (ex java library)
    """
    pass

class SignatureDecoratorError(BaseException):
    """
    error raised when a function decorated doesn't have the right signature
     = necessary elements for the decorator to work
     ex : replaceDecorator
    """
    pass