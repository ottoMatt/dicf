%------------------------------------------------------------------------------
% File     : ANA038-1 : TPTP v6.1.0. Released v3.2.0.
% Domain   : Analysis
% Problem  : Problem about Big-O notation
% Version  : [Pau06] axioms : Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    : BigO__bigo_plus_eq_simpler_2 [Pau06]

% Status   : Unsatisfiable
% Rating   : 0.80 v6.1.0, 0.86 v6.0.0, 0.80 v5.5.0, 0.90 v5.3.0, 0.94 v5.2.0, 0.88 v5.0.0, 0.79 v4.1.0, 0.85 v4.0.1, 0.82 v3.7.0, 0.80 v3.5.0, 0.82 v3.4.0, 0.83 v3.3.0, 0.93 v3.2.0
% Syntax   : Number of clauses     : 2802 ( 248 non-Horn; 654 unit;1988 RR)
%            Number of atoms       : 6155 (1281 equality)
%            Maximal clause size   :    7 (   2 average)
%            Number of predicates  :   87 (   0 propositional; 1-3 arity)
%            Number of functors    :  242 (  48 constant; 0-18 arity)
%            Number of variables   : 5835 (1185 singleton)
%            Maximal term depth    :    8 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found.
%------------------------------------------------------------------------------
include('Axioms/ANA003-0.ax').
include('Axioms/MSC001-1.ax').
include('Axioms/MSC001-0.ax').
%------------------------------------------------------------------------------
cnf(cls_OrderedGroup_Oabs__triangle__ineq_0,axiom,
    ( ~ class_OrderedGroup_Olordered__ab__group__abs(T_a)
    | c_lessequals(c_HOL_Oabs(c_plus(V_a,V_b,T_a),T_a),c_plus(c_HOL_Oabs(V_a,T_a),c_HOL_Oabs(V_b,T_a),T_a),T_a) )).

cnf(cls_OrderedGroup_Oadd__mono_0,axiom,
    ( ~ class_OrderedGroup_Opordered__ab__semigroup__add(T_a)
    | ~ c_lessequals(V_c,V_d,T_a)
    | ~ c_lessequals(V_a,V_b,T_a)
    | c_lessequals(c_plus(V_a,V_c,T_a),c_plus(V_b,V_d,T_a),T_a) )).

cnf(cls_OrderedGroup_Oadd__nonneg__nonneg_0,axiom,
    ( ~ class_OrderedGroup_Ocomm__monoid__add(T_a)
    | ~ class_OrderedGroup_Opordered__cancel__ab__semigroup__add(T_a)
    | ~ c_lessequals(c_0,V_y,T_a)
    | ~ c_lessequals(c_0,V_x,T_a)
    | c_lessequals(c_0,c_plus(V_x,V_y,T_a),T_a) )).

cnf(cls_Orderings_Ole__maxI1_0,axiom,
    ( ~ class_Orderings_Olinorder(T_b)
    | c_lessequals(V_x,c_Orderings_Omax(V_x,V_y,T_b),T_b) )).

cnf(cls_Orderings_Ole__maxI2_0,axiom,
    ( ~ class_Orderings_Olinorder(T_b)
    | c_lessequals(V_y,c_Orderings_Omax(V_x,V_y,T_b),T_b) )).

cnf(cls_Orderings_Oorder__class_Oorder__trans_0,axiom,
    ( ~ class_Orderings_Oorder(T_a)
    | ~ c_lessequals(V_y,V_z,T_a)
    | ~ c_lessequals(V_x,V_y,T_a)
    | c_lessequals(V_x,V_z,T_a) )).

cnf(cls_Orderings_Oorder__less__le__trans_0,axiom,
    ( ~ class_Orderings_Oorder(T_a)
    | ~ c_less(V_x,V_y,T_a)
    | ~ c_lessequals(V_y,V_z,T_a)
    | c_less(V_x,V_z,T_a) )).

cnf(cls_Ring__and__Field_Opordered__semiring__class_Omult__right__mono_0,axiom,
    ( ~ class_Ring__and__Field_Opordered__semiring(T_a)
    | ~ c_lessequals(V_a,V_b,T_a)
    | ~ c_lessequals(c_0,V_c,T_a)
    | c_lessequals(c_times(V_a,V_c,T_a),c_times(V_b,V_c,T_a),T_a) )).

cnf(cls_Ring__and__Field_Oring__distrib__1_0,axiom,
    ( ~ class_Ring__and__Field_Osemiring(T_a)
    | c_times(V_a,c_plus(V_b,V_c,T_a),T_a) = c_plus(c_times(V_a,V_b,T_a),c_times(V_a,V_c,T_a),T_a) )).

cnf(cls_Ring__and__Field_Oring__distrib__2_0,axiom,
    ( ~ class_Ring__and__Field_Osemiring(T_a)
    | c_times(c_plus(V_a,V_b,T_a),V_c,T_a) = c_plus(c_times(V_a,V_c,T_a),c_times(V_b,V_c,T_a),T_a) )).

cnf(cls_SetsAndFunctions_Oset__one__times_0,axiom,
    ( ~ class_OrderedGroup_Ocomm__monoid__mult(T_a)
    | c_SetsAndFunctions_Oelt__set__times(c_1,V_y,T_a) = V_y )).

cnf(cls_SetsAndFunctions_Oset__zero__plus_0,axiom,
    ( ~ class_OrderedGroup_Ocomm__monoid__add(T_a)
    | c_SetsAndFunctions_Oelt__set__plus(c_0,V_y,T_a) = V_y )).

cnf(cls_conjecture_0,negated_conjecture,
    ( c_less(c_0,v_c,t_b) )).

cnf(cls_conjecture_1,negated_conjecture,
    ( c_less(c_0,v_ca,t_b) )).

cnf(cls_conjecture_2,negated_conjecture,
    ( c_lessequals(c_0,v_f(v_xa),t_b) )).

cnf(cls_conjecture_3,negated_conjecture,
    ( c_lessequals(c_0,v_g(v_xa),t_b) )).

cnf(cls_conjecture_4,negated_conjecture,
    ( c_lessequals(c_HOL_Oabs(v_a(v_xa),t_b),c_times(v_c,v_f(v_xa),t_b),t_b) )).

cnf(cls_conjecture_5,negated_conjecture,
    ( c_lessequals(c_HOL_Oabs(v_b(v_xa),t_b),c_times(v_ca,v_g(v_xa),t_b),t_b) )).

cnf(cls_conjecture_6,negated_conjecture,
    ( c_lessequals(c_0,c_plus(v_f(v_xa),v_g(v_xa),t_b),t_b) )).

cnf(cls_conjecture_7,negated_conjecture,
    ( c_lessequals(c_HOL_Oabs(c_plus(v_a(v_xa),v_b(v_xa),t_b),t_b),c_plus(c_HOL_Oabs(v_a(v_xa),t_b),c_HOL_Oabs(v_b(v_xa),t_b),t_b),t_b) )).

cnf(cls_conjecture_8,negated_conjecture,
    ( ~ c_lessequals(c_HOL_Oabs(v_b(v_xa),t_b),c_times(c_Orderings_Omax(v_c,v_ca,t_b),v_g(v_xa),t_b),t_b) )).

cnf(tfree_tcs,negated_conjecture,
    ( class_Ring__and__Field_Oordered__idom(t_b) )).

%------------------------------------------------------------------------------
