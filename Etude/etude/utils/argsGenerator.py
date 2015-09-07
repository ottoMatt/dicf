# -*- coding: utf-8 -*-
import copy
import etude.utils.futils as futils
from collections import defaultdict


class ArgsGenerator(object):
    """
    on passe les arguments, les fichiers à lire ou dans lesquels écrire
    et on génère les combinaisons
    """
    drop_doublons = None  # need index id
    #dimensions = []

    def __init__(self):
        self.conditions = defaultdict(list)
        self.params = dict()
        self.lArgs = []

    def add_arg(self, arg):
        self.lArgs.append(arg)

    def add_args(self, lArgs):
        self.lArgs += lArgs

    def add_dim(self, name, params, cond=None):
        """
        cond peut être une liste de conditions
        """
        self.add_cond(name, cond)
        self.params[name] = params

    def add_cond(self, name, cond):
        if cond:
            if not isinstance(cond, list):
                cond = [cond]
            for el in cond:
                self.conditions[name].append(el)

    def addArgToDicts(self, name, data, lDicts):
        lNewDicts = copy.deepcopy(lDicts)
        for d in lNewDicts:
            d[name] = data
        return lNewDicts
    # un arg est un dict

    def generate(self):
        return self.main_generate(self.params, self.lArgs)
    """
    def generate(self,dimensions):#
        raise NotImplemented()
    def generate(self,lArgs):#
        #generate parameters with those dimension but only for the elements passed here
        raise NotImplemented()
    """

    def main_generate(self, params, lArgs):
        accu = lArgs
        for key, value in params.iteritems():
            # on reaffecte res pour propager les nouveaux paramètres
            accu = self.sub_generate(key, value, accu, prefix='')
        return accu

    def sub_generate(self, name, params, lArgs, prefix=''):
        if isinstance(
                params,
                dict):  # si dict, on ajoute le suffixe au préfixe
            res = [
                self.sub_generate(
                    name,
                    value,
                    lArgs,
                    prefix=prefix +
                    key) for key,
                value in params.iteritems()]
            return futils.merge_lists(res)
        # si list on génère chaque élément en ajoutant le préfixe à chacun
        elif isinstance(params, list):
            res = [
                self.sub_generate(
                    name,
                    value,
                    lArgs,
                    prefix=prefix) for value in params]
            return futils.merge_lists(res)
        else:  # si c'est un élément
            try:  # si on a pas posé de conditions logiques
                if self.isInvalidCase(
                        name, prefix + str(params)):  # a raffiner
                    return []
            except:  # key error potentiellement
                pass
            return self.addArgToDicts(name, prefix + str(params), lArgs)

    def isInvalidCase(self, name, value):
        '''
        la condition correspond à un cas invalide
        la condition doit etre passée en string... oui je sais
        ici on s'occupe de la granularité la plus fine parce qu'au dessus il
        suffit d'enlever un argument de la liste...

        ex use cas : cond = 'min-2' in value or '2' in value
        '''
        cond = False
        for condString in self.conditions[name]:
            condString = "cond = " + condString
            exec(condString)
            if cond:  # cond is assigned dynamically
                return True
        return False


def main():
    argsgen = ArgsGenerator()
    arg1 = dict()
    arg1['fname'] = 'gluco'
    argsgen.add_arg(arg1)
    print argsgen.lArgs
    argsgen.add_dim(
        'var', ['all', {'max-': [1, 2], 'min-':[4, 5]}], cond="'min-4' in value")
    print argsgen.params
    print argsgen.conditions
    res = argsgen.generate()
    print res
main()
