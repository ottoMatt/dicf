# -*- coding: utf-8 -*-

from subprocess import *
import os
import re
import csv

def addToLog(log_file, toAdd) :
    for line in toAdd :
        log_file.write(line + '\n')
        print line

def writeToLog(log_filename, toAdd) :
    with open(log_filename + '.log', 'a') as log_file :
        for line in toAdd :
            log_file.write(line + '\n')
            #print line
            
def jarWrapper(*args):
    '''    
        http://stackoverflow.com/questions/7372592/python-how-can-execute-a-jar-file-through-a-python-script
    '''
    print list(args)
    process = Popen(['java']+list(args), stdout=PIPE, stderr=PIPE)
    ret = []
    while process.poll() is None:
        line = process.stdout.readline()
        if line != '' and line.endswith('\n'):
            ret.append(line[:-1])
    stdout, stderr = process.communicate()
    ret += stdout.split('\n')
    if stderr != '':
        ret += stderr.split('\n')
    ret.remove('')
    return ret
def exWrapper(*args):
    print args
    process = Popen(list(args), stdout=PIPE, stderr=PIPE)
    ret = []
    while process.poll() is None:
        line = process.stdout.readline()
        if line != '' and line.endswith('\n'):
            ret.append(line[:-1])
    stdout, stderr = process.communicate()
    ret += stdout.split('\n')
    if stderr != '':
        ret += stderr.split('\n')
    ret.remove('')
    return ret
    
def get_files(path,ext):
    res = []
    for file in os.listdir(path):
        if file.endswith(ext):
            res.append(file)
    return res    

def remove_ext(filenames, ext):
    return [fname[:-len(ext)] for fname in filenames if fname.endswith(ext)]

def make_dirs_safe(path):
    try: 
        os.makedirs(path)
    except OSError:
        if not os.path.isdir(path):
            raise

def read_csv(filename, log_file, ext = '.csv'):
    res= []
    if not os.path.isfile(filename+ext) :
        addToLog(log_file,['pas de fichier '+filename])
    with open(filename+ext,'r') as csvfile:
        reader = csv.DictReader(csvfile)
        for rowDict in reader:
            res.append(rowDict)
    return res
    
def reset_file(filename,ext,log_file):
    with open(filename+ext,'w') as csvfile:
        pass    

def write_dict_csv(argsDict,fieldnames, filename, gen_path,lock=None,ext='.csv'):
    output_file =gen_path + filename + ext
    file_exist = False
    if os.path.isfile(output_file) : 
        file_exist = True
    if lock :
        lock.acquire()
    with open(output_file, 'a') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames,extrasaction='ignore')
        if not file_exist :
            writer.writeheader()
        writer.writerow(argsDict)
        if lock :
            lock.release()
            
def outputs_all_dicts_csv(l_argsDict,fieldnames, filename,gen_path,lock=None,ext='.csv'):
    output_file =gen_path + filename + ext
    file_exist = False
    if os.path.isfile(output_file) : 
        file_exist = True
    if lock :
        lock.acquire()
    with open(output_file, 'a') as csvfile:
        writer = csv.DictWriter(csvfile, fieldnames=fieldnames,extrasaction='ignore')
        if not file_exist :
            writer.writeheader()
        for argsDict in l_argsDict :
            writer.writerow(argsDict)
    if lock :
        lock.release()


        
    