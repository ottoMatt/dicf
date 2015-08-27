# -*- coding: utf-8 -*-
#@logged_result #log le result de la fonction 
from functools import wraps
import logging
"""
TODO : use format and lazy evaluation, but here no performance need
http://stackoverflow.com/questions/5082452/python-string-formatting-vs-format
"""
def format_str(msg):
    """
        convert to the right format the element we want to log
        useful only for lists (logging module calls str() anyway ) 
        but we can add other cases easily
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
    
        

def log_result(func):
    '''
    Add logging to a function.  level is the logging
    level, name is the logger name, and message is the
    log message.  If name and message aren't specified,
    they default to the function's module and name.
    
    we cannot pass the logger name in there because it depends on the time
    the fun is called, not on the definition
    
    aprioiri ici on ne log que du debug
    
    dans les autres cas on logge juste le nom de la mthodem donc faire 
    test : quand sur debug alors on log aussi le result, sinon on ne logge que
        le nom de la méthode
        '''
    @wraps(func)
    def wrapper(*args, **kwargs):
        try:
            if kwargs['logname'] :                
                log = logging.getLogger(kwargs['logname'])
                print kwargs['logname']
                del kwargs['logname']#trop laid...
        except KeyError:
            print """pas de logger correspondant!, on log sur le log général
            dans ce cas pas grave"""
            log = logging.getLogger()#root, name class ?#il n y a pas forcément de handler ici...
        
        log.log(logging.INFO, format_str([func.__module__+'::'+func.__name__]))
        log.log(logging.DEBUG, format_str(args)+format_str(kwargs))
        res = func(*args, **kwargs)
        log.log(logging.DEBUG, format_str(res))     
        #log.handlers[0].flush()
        return res

    return wrapper

# Example use
@log_result
def add(x, y):
    return x + y

@log_result
def spam(x,y,z,**kwargs):
    print('Spam!')
    return 'spam!'
    
    
from logging.handlers import RotatingFileHandler
def init_logger():
    
    formatter = logging.Formatter('%(asctime)s :: %(levelname)s :: %(message)s')
    # création de l'objet logger qui va nous servir à écrire dans les logs
    logger =logging.getLogger()
    logger.setLevel(logging.DEBUG)
    file_handler = RotatingFileHandler('main_errors.log', 'a', 1000000, 1)
    file_handler.setLevel(logging.WARNING)
    file_handler.setFormatter(formatter)
    logger.addHandler(file_handler)
    

    logger = logging.getLogger('main')
    # on met le niveau du logger à DEBUG, comme ça il écrit tout
    logger.setLevel(logging.DEBUG)
     
    # création d'un formateur qui va ajouter le temps, le niveau
    # de chaque message quand on écrira un message dans le log
    # création d'un handler qui va rediriger une écriture du log vers
    # un fichier en mode 'append', avec 1 backup et une taille max de 1Mo
    file_handler = RotatingFileHandler('activity.log', 'a', 1000000, 1)
    # on lui met le niveau sur DEBUG, on lui dit qu'il doit utiliser le formateur
    # créé précédement et on ajoute ce handler au logger
    file_handler.setLevel(logging.DEBUG)
    file_handler.setFormatter(formatter)
    logger.addHandler(file_handler)
     
    # création d'un second handler qui va rediriger chaque écriture de log
    # sur la console
    steam_handler = logging.StreamHandler()
    steam_handler.setLevel(logging.DEBUG)
    logger.addHandler(steam_handler)
     
    # Après 3 heures, on peut enfin logguer
    # Il est temps de spammer votre code avec des logs partout :
     
     
     
    sub_logger = logging.getLogger('sublog')
    file_handler = RotatingFileHandler('subactivity.log', 'a', 1000000, 1)    
    file_handler.setLevel(logging.DEBUG)
    file_handler.setFormatter(formatter)
    sub_logger.addHandler(file_handler)
    
    logger.info('Hello')
    logger.warning('Testing %s', 'foo')
def init_logger():
    pass
    
init_logger()
spam(1,2,3, thing1 =2, ee= '33')


spam(1,2,3, aa='test.log en logname, nimporte quoi',logname ='sublog')

spam(1,2,3, aa='tesscsds',logname ='main')