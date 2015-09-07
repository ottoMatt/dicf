# -*- coding: utf-8 -*-
"""
    This class is meant to be inherited, by each module to offer a basic
    interface to the other modules and force the design of a workflow
    (at least minimal with __init__())

    It also allows for each module to define a number of custom function
    like decorators for logging etc...
"""
"""
HOW TO USE LOGGER :
the inputs and outputs will be logged.
The exception and errors too
"""

from functools import wraps
import logging
import sys
from logging.handlers import RotatingFileHandler
import etude.constants as constants


def format_str(msg):
    """
        convert to the right format the element we want to log
        here we can add later the special format func with lazy evaluation

    TODO : use format and lazy evaluation, but here no performance need
    http://stackoverflow.com/questions/5082452/python-string-formatting-vs-format
    """
    res = ''
    if isinstance(msg, list):
        #msg = [str(el)  for el in msg]
        res += '\n'.join(msg)
    elif isinstance(msg, dict):
        # for key,value in msg.iteritems():
        #    res+=str(key)+': '+str(value)+'\n'
        res += str(msg)
    else:
        res += str(msg)
    return res


class LoggedClass(object):
    logname = None

    def __init__(self, logname):
        self.logname = logname
        LoggedClass.init_root_logger(constants.ROOT_LOGFILENAME)
        LoggedClass.init_logger(
            self.logname,
            logging.DEBUG,
            self.logname + '.log')
        self.log = logging.getLogger(self.logname)

    @staticmethod
    def logged(name=None):
        """this decorator is customized for logging methods of an object and
        getting the logname attribute from it
        """
        def decorate(func):
            logatt_name = name if name else 'logname'  # nom de l'Attribut
            # permet de changer le nom de l'attribut dans le futur...
            # on ne s'en occupe pas pour l'instant

            @wraps(func)
            def wrapper(self, *args, **kwargs):
                logname = self.__dict__[logatt_name]
                log = logging.getLogger(logname)
                # log.info(format_str(func.__module__))
                log.info(format_str(func.__name__))
                log.debug('args:' + format_str(args) + format_str(kwargs))
                try:
                    res = func(self, *args, **kwargs)
                    # parse res and if in res you've got the name Exception, raise
                    # an externalError
                except Exception as exception:
                    # log this depending on its name
                    e_name = exception.__class__.__name__
                    if 'exception' in exception.__class__.__name__.lower():
                        log.warning(e_name, exc_info=True)
                    else:  # alors erreur
                        log.error(e_name, exc_info=True)
                    raise
                if res:
                    log.debug(format_str(res))
                return res
            return wrapper
        return decorate

    @staticmethod
    def init_root_logger(logfile):
        logger = logging.getLogger()
        logger.setLevel(logging.DEBUG)
        if len(logger.handlers) != 3:
            stream_handler = logging.StreamHandler(
                sys.stderr)  # stderr par défaut
            stream_handler.setLevel(logging.WARNING)
            logger.addHandler(stream_handler)

            stream_handler = logging.StreamHandler(sys.stdout)
            stream_handler.setLevel(logging.DEBUG)
            logger.addHandler(stream_handler)

            file_handler = RotatingFileHandler(logfile, 'a', 1000000, 1)
            file_handler.setLevel(logging.WARNING)
            file_handler.setFormatter(constants.formatter)
            logger.addHandler(file_handler)
        print logger.handlers

    @staticmethod
    def init_logger(logname, level, logfile):
        logger = logging.getLogger(logname)
        if not logger.handlers:  # allows to check if has already been initialized
            logger.setLevel(level)
            file_handler = RotatingFileHandler(logfile, 'a', 1000000, 1)
            file_handler.setLevel(level)
            file_handler.setFormatter(constants.formatter)
            logger.addHandler(file_handler)
        print logger.handlers


def logged(name=None, msg=None):
    '''
    Add logging to a function.  level is the logging
    level, name is the logger name, and message is the
    log message.  If name and message aren't specified,
    they default to the function's module and name.
    '''
    def decorate(func):
        logname = name if name else ''
        logmsg = msg if msg else None

        @wraps(func)
        def wrapper(*args, **kwargs):
            # root, name class ?#il n y a pas forcément de handler ici...
            log = logging.getLogger(logname)
            if logmsg:
                log.info(format_str(logmsg))
            log.info(format_str(func.__module__))
            log.info(format_str('fun :: ' + func.__name__))
            log.debug('args:' + format_str(args) + format_str(kwargs))
            try:
                res = func(*args, **kwargs)
                # parse res and if in res you've got the name Exception, raise
                # an externalError
            except Exception as exception:
                # log this depending on its name
                e_name = exception.__class__.__name__
                if 'exception' in exception.__class__.__name__.lower():
                    log.warning(e_name, exc_info=True)
                else:  # alors erreur
                    log.error(e_name, exc_info=True)
                raise
            # log.handlers[0].flush()
            log.debug(format_str(res))
            return res
        return wrapper
    return decorate


@logged(name='aux')
def spam(x, y, z, **kwargs):
    # print('Spam!')
    return 'spam!'


def test():
    LoggedClass.init_root_logger('root.stderr.log')
    LoggedClass.init_logger('aux', logging.DEBUG, 'aux.log')

    spam(1, 2, 3, t='r')
a = funciton()