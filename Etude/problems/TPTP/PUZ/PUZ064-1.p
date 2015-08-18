%------------------------------------------------------------------------------
% File     : PUZ064-1 : TPTP v6.1.0. Released v3.2.0.
% Domain   : Puzzles
% Problem  : Problem about mutilated chessboard problem
% Version  : [Pau06] axioms : Especial.
% English  :

% Refs     : [Pau06] Paulson (2006), Email to G. Sutcliffe
% Source   : [Pau06]
% Names    : Mutil__tiling_UnI_2 [Pau06]

% Status   : Unsatisfiable
% Rating   : 0.80 v6.1.0, 0.93 v6.0.0, 0.80 v5.5.0, 0.95 v5.3.0, 0.94 v5.0.0, 0.93 v4.1.0, 0.92 v4.0.1, 0.91 v4.0.0, 1.00 v3.2.0
% Syntax   : Number of clauses     : 2739 ( 248 non-Horn; 654 unit;1966 RR)
%            Number of atoms       : 6005 (1282 equality)
%            Maximal clause size   :    7 (   2 average)
%            Number of predicates  :   87 (   0 propositional; 1-3 arity)
%            Number of functors    :  239 (  50 constant; 0-18 arity)
%            Number of variables   : 5685 (1154 singleton)
%            Maximal term depth    :    8 (   1 average)
% SPC      : CNF_UNS_RFO_SEQ_NHN

% Comments : The problems in the [Pau06] collection each have very many axioms,
%            of which only a small selection are required for the refutation.
%            The mission is to find those few axioms, after which a refutation
%            can be quite easily found.
%------------------------------------------------------------------------------
include('Axioms/MSC001-1.ax').
include('Axioms/MSC001-0.ax').
%------------------------------------------------------------------------------
cnf(cls_Mutil_Odomino_Ohoriz_0,axiom,
    ( c_in(c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),c_insert(c_Pair(V_i,c_Suc(V_j),tc_nat,tc_nat),c_emptyset,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)),c_Mutil_Odomino,tc_set(tc_prod(tc_nat,tc_nat))) )).

cnf(cls_Mutil_Odomino_Overtl_0,axiom,
    ( c_in(c_insert(c_Pair(V_i,V_j,tc_nat,tc_nat),c_insert(c_Pair(c_Suc(V_i),V_j,tc_nat,tc_nat),c_emptyset,tc_prod(tc_nat,tc_nat)),tc_prod(tc_nat,tc_nat)),c_Mutil_Odomino,tc_set(tc_prod(tc_nat,tc_nat))) )).

cnf(cls_Mutil_Otiling_OUn_0,axiom,
    ( ~ c_in(V_a,V_A,tc_set(T_a))
    | ~ c_in(V_t,c_Mutil_Otiling(V_A,T_a),tc_set(T_a))
    | c_inter(V_a,V_t,T_a) != c_emptyset
    | c_in(c_union(V_a,V_t,T_a),c_Mutil_Otiling(V_A,T_a),tc_set(T_a)) )).

cnf(cls_Mutil_Otiling_Oempty_0,axiom,
    ( c_in(c_emptyset,c_Mutil_Otiling(V_A,T_a),tc_set(T_a)) )).

cnf(cls_Set_OUn__assoc_0,axiom,
    ( c_union(c_union(V_A,V_B,T_a),V_C,T_a) = c_union(V_A,c_union(V_B,V_C,T_a),T_a) )).

cnf(cls_conjecture_0,negated_conjecture,
    ( c_in(v_a,v_A,tc_set(t_a)) )).

cnf(cls_conjecture_1,negated_conjecture,
    ( c_in(v_t,c_Mutil_Otiling(v_A,t_a),tc_set(t_a)) )).

cnf(cls_conjecture_2,negated_conjecture,
    ( c_inter(v_a,v_t,t_a) = c_emptyset )).

cnf(cls_conjecture_3,negated_conjecture,
    ( c_in(v_u,c_Mutil_Otiling(v_A,t_a),tc_set(t_a)) )).

cnf(cls_conjecture_4,negated_conjecture,
    ( c_inter(c_union(v_a,v_t,t_a),v_u,t_a) = c_emptyset )).

cnf(cls_conjecture_5,negated_conjecture,
    ( ~ c_in(c_union(c_union(v_a,v_t,t_a),v_u,t_a),c_Mutil_Otiling(v_A,t_a),tc_set(t_a)) )).

cnf(cls_conjecture_6,negated_conjecture,
    ( c_in(c_union(v_t,v_u,t_a),c_Mutil_Otiling(v_A,t_a),tc_set(t_a))
    | c_inter(v_t,v_u,t_a) != c_emptyset
    | ~ c_in(v_u,c_Mutil_Otiling(v_A,t_a),tc_set(t_a)) )).

%------------------------------------------------------------------------------
