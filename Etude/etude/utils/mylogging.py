# -*- coding: utf-8 -*-
#@logged_result #log le result de la fonction 
from functools import wraps
import logging
import sys
"""
TODO : use format and lazy evaluation, but here no performance need
http://stackoverflow.com/questions/5082452/python-string-formatting-vs-format
"""
def format_str(msg):
    """
        convert to the right format the element we want to log
        useful only for lists (logging module calls str() anyway ) 
        but we can add other cases easily
        
        here we can add later the special format func with lazy evaluation
    """
    res = ''
    if isinstance(msg, list):
        #msg = [str(el)  for el in msg]
        res+='\n'.join(msg)
    elif isinstance(msg, dict):
        #for key,value in msg.iteritems():
        #    res+=str(key)+': '+str(value)+'\n'
        res+=str(msg)
    else:
        res+=str(msg)
    return res
    
        
def logged(name=None, messageSup=None):
    '''
    Add logging to a function.  level is the logging
    level, name is the logger name, and message is the
    log message.  If name and message aren't specified,
    they default to the function's module and name.
    '''
    print '1'
    def decorate(func):
        logname = name if name else ''
        logmsg = messageSup if messageSup else None
        print '2'
        print logname
        @wraps(func)
        def wrapper(*args, **kwargs):
            print '3'
            #root, name class ?#il n y a pas forcément de handler ici...
            log = logging.getLogger(logname) 
            
            print log.handlers
            if logmsg:
                log.log(logging.INFO, format_str())
            
            log.log(logging.INFO, format_str(func.__module__+'::'+func.__name__))
            log.log(logging.DEBUG, format_str(args)+format_str(kwargs))
            res = func(*args, **kwargs)
            log.log(logging.DEBUG, format_str(res))     
            
            
            log.log(logging.ERROR, format_str('erorororororor'))
            #log.handlers[0].flush()
            return func
        return wrapper
    return decorate
    

fmt = '%(asctime)s %(filename)-18s %(levelname)-8s: %(message)s'
formatter = logging.Formatter(fmt)
from logging.handlers import RotatingFileHandler
def init_root_logger(logfile):
    logger = logging.getLogger()
    logger.setLevel(logging.DEBUG)
    if not logger.handlers: 
        #defauly printing for this
        stream_handler = logging.StreamHandler(sys.stderr)#stderr par défaut
        stream_handler.setLevel(logging.WARNING)
        logger.addHandler(stream_handler)
    
        stream_handler = logging.StreamHandler(sys.stdout)
        stream_handler.setLevel(logging.DEBUG)
        logger.addHandler(stream_handler)
    
        file_handler = RotatingFileHandler(logfile, 'a', 1000000, 1)
        file_handler.setLevel(logging.WARNING)
        file_handler.setFormatter(formatter)
        logger.addHandler(file_handler)
    
    print logger.handlers
        
    
def init_logger(logname, level, logfile):
    logger = logging.getLogger(logname)
    if not logger.handlers: #allows to check if has already been initialized
        print 'init logge'
        logger.setLevel(level)
        file_handler = RotatingFileHandler(logfile, 'a', 1000000, 1)
        file_handler.setLevel(level)
        file_handler.setFormatter(formatter)
        logger.addHandler(file_handler)
    print logger.handlers

init_root_logger('root.stderr.log')
init_logger('aux', logging.DEBUG, 'aux.log')

@logged(name = 'aux')
def spam(x,y,z,**kwargs):
    print('Spam!')
    return 'spam!'
    
    
spam(1,2,3, t= 'r')
