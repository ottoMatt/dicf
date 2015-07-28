%------------------------------------------------------------------------------
% File     : ANA007-2 : TPTP v6.1.0. Released v3.2.0.
% Domain   : Analysis
% Problem  : Problem about Big-O notation
% Version  : [Pau06] axioms : Reduced > Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.00 v5.3.0, 0.08 v5.2.0, 0.00 v4.1.0, 0.11 v4.0.1, 0.17 v3.3.0, 0.29 v3.2.0
% Syntax   : Number of clauses     :    5 (   0 non-Horn;   2 unit;   3 RR)
%            Number of atoms       :    8 (   1 equality)
%            Maximal clause size   :    2 (   2 average)
%            Number of predicates  :    4 (   0 propositional; 1-3 arity)
%            Number of functors    :    6 (   2 constant; 0-3 arity)
%            Number of variables   :    9 (   6 singleton)
%            Maximal term depth    :    5 (   2 average)
% SPC      : CNF_UNS_RFO_SEQ_HRN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found. This version has only the necessary
%            axioms.
%------------------------------------------------------------------------------
cnf(cls_conjecture_0,negated_conjecture,
    ( ~ c_lessequals(c_HOL_Oabs(v_f(v_x(V_U)),t_b),c_times(V_U,c_HOL_Oabs(v_f(v_x(V_U)),t_b),t_b),t_b) )).

cnf(tfree_tcs,negated_conjecture,
    ( class_Ring__and__Field_Oordered__idom(t_b) )).

cnf(cls_Orderings_Oorder__class_Oaxioms__1_0,axiom,
    ( ~ class_Orderings_Oorder(T_a)
    | c_lessequals(V_x,V_x,T_a) )).

cnf(cls_Ring__and__Field_Omult__cancel__right1_2,axiom,
    ( ~ class_Ring__and__Field_Oordered__idom(T_a)
    | V_c = c_times(c_1,V_c,T_a) )).

cnf(clsrel_Ring__and__Field_Oordered__idom_44,axiom,
    ( ~ class_Ring__and__Field_Oordered__idom(T)
    | class_Orderings_Oorder(T) )).

%------------------------------------------------------------------------------