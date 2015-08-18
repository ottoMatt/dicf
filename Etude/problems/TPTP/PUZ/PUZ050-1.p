%--------------------------------------------------------------------------
% File     : PUZ050-1 : TPTP v6.1.0. Released v2.6.0.
% Domain   : Puzzles
% Problem  : Quo vadis 6 - initial to intermediate
% Version  : Especial.
% English  : bb is big block (square, size=4 tiles).
%            s1-s4 : 4 small square blocks, size=1 tile
%            v1-v4: 4 vertical blocks, size= 2 tiles
%            b1: horizontal block, size= 2 tiles
%            e1, e2 are the 2 blank tiles
%            It's a 5x4 playing field to move from the start state to
%            the goal state. This is the true goal from the puzzle.

% Refs     :
% Source   : [TPTP]
% Names    :

% Status   : Unsatisfiable
% Rating   : 0.67 v6.1.0, 0.93 v6.0.0, 0.89 v5.5.0, 0.94 v5.3.0, 0.95 v5.2.0, 0.92 v5.1.0, 0.94 v5.0.0, 0.93 v4.0.1, 0.71 v3.4.0, 0.80 v3.3.0, 0.67 v3.1.0, 1.00 v2.6.0
% Syntax   : Number of clauses     :   43 (   0 non-Horn;   2 unit;  43 RR)
%            Number of atoms       :   84 (   0 equality)
%            Maximal clause size   :    2 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 12-12 arity)
%            Number of functors    :   14 (   1 constant; 0-2 arity)
%            Number of variables   :  480 (   0 singleton)
%            Maximal term depth    :    6 (   1 average)
% SPC      : CNF_UNS_RFO_NEQ_HRN

% Comments : This is from the initial state to an intermediate state, and
%            PUZ051-1 takes it from here to the goal.
%--------------------------------------------------------------------------
%----Include axioms for quo vadis
include('Axioms/PUZ004-0.ax').
%--------------------------------------------------------------------------
cnf(initial_state,hypothesis,
    ( state(bb(o,s(o)),v1(o,o),v2(o,s(s(s(o)))),v3(s(s(o)),o),v4(s(s(o)),s(s(s(o)))),h(s(s(o)),s(o)),s1(s(s(s(o))),s(o)),s2(s(s(s(o))),s(s(o))),s3(s(s(s(s(o)))),s(o)),s4(s(s(s(s(o)))),s(s(o))),e1(s(s(s(s(o)))),o),e2(s(s(s(s(o)))),s(s(s(o))))) )).

cnf(intermediate_state,negated_conjecture,
    ( ~ state(bb(o,o),v1(s(s(o)),o),v2(o,s(s(s(o)))),v3(o,s(s(o))),v4(s(s(s(o))),s(s(o))),h(s(s(s(s(o)))),o),s1(s(s(o)),s(o)),s2(s(s(o)),s(s(o))),s3(s(s(o)),s(s(s(o)))),s4(s(s(s(o))),s(o)),e1(s(s(s(o))),s(s(s(o)))),e2(s(s(s(s(o)))),s(s(s(o))))) )).

%--------------------------------------------------------------------------
