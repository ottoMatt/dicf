%--------------------------------------------------------------------------
% File     : PUZ053-1 : TPTP v6.1.0. Released v2.7.0.
% Domain   : Puzzles
% Problem  : Rubik's Cube unreachability
% Version  : [HM98] axioms : Especial.
%            Theorem formulation : Rotations in one plane only.
% English  : Rubik's Cube is a 3x3x3 cube consisting of 27 subcubes with
%            colored faces. The three layers perpendicular to any axis may
%            be rotated independently. The object is to take a scrambled
%            cube and unscramble it so that each side consists entirely
%            of one color(Blue, White, Green, Yellow, Orange, Red).
%            The objective here is unreachable: one swap between b and r has
%            taken place.

% Refs     : [Cla03] Claessen (2003), Email to G. Sutcliffe
% Source   : [Cla03]
% Names    :

% Status   : Satisfiable
% Rating   : 1.00 v2.7.0
% Syntax   : Number of clauses     :   20 (   0 non-Horn;   2 unit;  20 RR)
%            Number of atoms       :   38 (   0 equality)
%            Maximal clause size   :    2 (   2 average)
%            Number of predicates  :    1 (   0 propositional; 54-54 arity)
%            Number of functors    :    6 (   6 constant; 0-0 arity)
%            Number of variables   :  972 (   0 singleton)
%            Maximal term depth    :    1 (   1 average)
% SPC      : CNF_SAT_EPR

% Comments : Swapped one b with an r in make_like_this from PUZ037-1.p
%            Model never found; it must be huge.
%--------------------------------------------------------------------------
cnf(make_like_this,negated_conjecture,
    ( ~ state(b,b,b,b,b,b,b,b,r,b,r,r,g,g,g,o,o,o,y,y,y,r,r,r,g,g,g,o,o,o,y,y,y,r,r,r,g,g,g,o,o,o,y,y,y,w,w,w,w,w,w,w,w,w) )).

cnf(start_with_this,hypothesis,
    ( state(b,b,b,b,b,b,b,b,b,r,r,r,g,g,g,o,o,o,y,y,y,g,g,g,o,o,o,y,y,y,r,r,r,r,r,r,g,g,g,o,o,o,y,y,y,w,w,w,w,w,w,w,w,w) )).

cnf(txy,axiom,
    ( ~ state(W7,W6,W5,W8,A1,W4,W1,W2,W3,Y1,Y2,Y3,X1,X2,X3,X4,X5,X6,X7,X8,X9,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7)
    | state(W1,W8,W7,W2,A1,W6,W3,W4,W5,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y1,Y2,Y3,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7) )).

cnf(mxy,axiom,
    ( ~ state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,Y1,Y2,Y3,X1,X2,X3,X4,X5,X6,X7,X8,X9,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7,D8,D9,E1,E2,E3,E4,E5,E6)
    | state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y1,Y2,Y3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7,D8,D9,E1,E2,E3,E4,E5,E6) )).

cnf(bxy,axiom,
    ( ~ state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,Y1,Y2,Y3,X1,X2,X3,X4,X5,X6,X7,X8,X9,W7,W8,W1,W6,D7,W2,W5,W4,W3)
    | state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y1,Y2,Y3,W1,W2,W3,W8,D7,W4,W7,W6,W5) )).

cnf(fzy,axiom,
    ( ~ state(A1,A2,A3,A4,A5,A6,V1,U1,Y1,A7,A8,W1,V2,U2,Y2,X1,A9,B1,B2,B3,B4,B5,B6,W2,V3,U3,Y3,X2,B7,B8,B9,C1,C2,C3,C4,W3,V4,U4,Y4,X3,C5,C6,C7,C8,C9,V5,U5,Y5,D1,D2,D3,D4,D5,D6)
    | state(A1,A2,A3,A4,A5,A6,X1,X2,X3,A7,A8,Y1,Y2,Y3,Y4,Y5,A9,B1,B2,B3,B4,B5,B6,U1,U2,U3,U4,U5,B7,B8,B9,C1,C2,C3,C4,V1,V2,V3,V4,V5,C5,C6,C7,C8,C9,W1,W2,W3,D1,D2,D3,D4,D5,D6) )).

cnf(mzy,axiom,
    ( ~ state(A1,A2,A3,Y1,Y2,Y3,A4,A5,A6,A7,X9,A8,A9,B1,B2,B3,X1,B4,B5,B6,B7,B8,X8,B9,C1,C2,C3,C4,X2,C5,C6,C7,C8,C9,X7,D1,D2,D3,D4,D5,X3,D6,D7,D8,D9,E1,E2,E3,X6,X5,X4,E4,E5,E6)
    | state(A1,A2,A3,X1,X2,X3,A4,A5,A6,A7,Y3,A8,A9,B1,B2,B3,X4,B4,B5,B6,B7,B8,Y2,B9,C1,C2,C3,C4,X5,C5,C6,C7,C8,C9,Y1,D1,D2,D3,D4,D5,X6,D6,D7,D8,D9,E1,E2,E3,X9,X8,X7,E4,E5,E6) )).

cnf(bzy,axiom,
    ( ~ state(Y1,Y2,Y3,A1,A2,A3,A4,A5,A6,X9,A7,A8,A9,B1,B2,B3,B4,X1,W1,W8,W7,X8,B5,B6,B7,B8,B9,C1,C2,X2,W2,C3,W6,X7,C4,C5,C6,C7,C8,C9,D1,X3,W3,W4,W5,D2,D3,D4,D5,D6,D7,X6,X5,X4)
    | state(X1,X2,X3,A1,A2,A3,A4,A5,A6,Y3,A7,A8,A9,B1,B2,B3,B4,X4,W3,W2,W1,Y2,B5,B6,B7,B8,B9,C1,C2,X5,W4,C3,W8,Y1,C4,C5,C6,C7,C8,C9,D1,X6,W5,W6,W7,D2,D3,D4,D5,D6,D7,X9,X8,X7) )).

cnf(lzx,axiom,
    ( ~ state(Y1,A1,A2,Y2,A3,A4,Y3,A5,A6,W7,W8,W1,X1,A7,A8,A9,B1,B2,B3,B4,X9,W6,B5,W2,X2,B6,B7,B8,B9,C1,C2,C3,X8,W5,W4,W3,X3,C4,C5,C6,C7,C8,C9,D1,X7,X4,D2,D3,X5,D4,D5,X6,D6,D7)
    | state(X1,A1,A2,X2,A3,A4,X3,A5,A6,W1,W2,W3,X4,A7,A8,A9,B1,B2,B3,B4,Y3,W8,B5,W4,X5,B6,B7,B8,B9,C1,C2,C3,Y2,W7,W6,W5,X6,C4,C5,C6,C7,C8,C9,D1,Y1,X7,D2,D3,X8,D4,D5,X9,D6,D7) )).

cnf(mzx,axiom,
    ( ~ state(A1,Y1,A2,A3,Y2,A4,A5,Y3,A6,A7,A8,A9,B1,X1,B2,B3,B4,B5,B6,X9,B7,B8,B9,C1,C2,X2,C3,C4,C5,C6,C7,X8,C8,C9,D1,D2,D3,X3,D4,D5,D6,D7,D8,X7,D9,E1,X4,E2,E3,X5,E4,E5,X6,E6)
    | state(A1,X1,A2,A3,X2,A4,A5,X3,A6,A7,A8,A9,B1,X4,B2,B3,B4,B5,B6,Y3,B7,B8,B9,C1,C2,X5,C3,C4,C5,C6,C7,Y2,C8,C9,D1,D2,D3,X6,D4,D5,D6,D7,D8,Y1,D9,E1,X7,E2,E3,X8,E4,E5,X9,E6) )).

cnf(rzx,axiom,
    ( ~ state(A1,A2,Y1,A3,A4,Y2,A5,A6,Y3,A7,A8,A9,B1,B2,X1,W1,W8,W7,X9,B3,B4,B5,B6,B7,B8,B9,X2,W2,C1,W6,X8,C2,C3,C4,C5,C6,C7,C8,X3,W3,W4,W5,X7,C9,D1,D2,D3,X4,D4,D5,X5,D6,D7,X6)
    | state(A1,A2,X1,A3,A4,X2,A5,A6,X3,A7,A8,A9,B1,B2,X4,W3,W2,W1,Y3,B3,B4,B5,B6,B7,B8,B9,X5,W4,C1,W8,Y2,C2,C3,C4,C5,C6,C7,C8,X6,W5,W6,W7,Y1,C9,D1,D2,D3,X7,D4,D5,X8,D6,D7,X9) )).

cnf(tyx,axiom,
    ( ~ state(W1,W8,W7,W2,A1,W6,W3,W4,W5,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y1,Y2,Y3,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7)
    | state(W7,W6,W5,W8,A1,W4,W1,W2,W3,Y1,Y2,Y3,X1,X2,X3,X4,X5,X6,X7,X8,X9,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7) )).

cnf(myx,axiom,
    ( ~ state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y1,Y2,Y3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7,D8,D9,E1,E2,E3,E4,E5,E6)
    | state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,Y1,Y2,Y3,X1,X2,X3,X4,X5,X6,X7,X8,X9,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,D7,D8,D9,E1,E2,E3,E4,E5,E6) )).

cnf(byx,axiom,
    ( ~ state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,X1,X2,X3,X4,X5,X6,X7,X8,X9,Y1,Y2,Y3,W1,W2,W3,W8,D7,W4,W7,W6,W5)
    | state(A1,A2,A3,A4,A5,A6,A7,A8,A9,B1,B2,B3,B4,B5,B6,B7,B8,B9,C1,C2,C3,C4,C5,C6,C7,C8,C9,D1,D2,D3,D4,D5,D6,Y1,Y2,Y3,X1,X2,X3,X4,X5,X6,X7,X8,X9,W7,W8,W1,W6,D7,W2,W5,W4,W3) )).

cnf(fyz,axiom,
    ( ~ state(A1,A2,A3,A4,A5,A6,X1,X2,X3,A7,A8,Y1,Y2,Y3,Y4,Y5,A9,B1,B2,B3,B4,B5,B6,U1,U2,U3,U4,U5,B7,B8,B9,C1,C2,C3,C4,V1,V2,V3,V4,V5,C5,C6,C7,C8,C9,W1,W2,W3,D1,D2,D3,D4,D5,D6)
    | state(A1,A2,A3,A4,A5,A6,V1,U1,Y1,A7,A8,W1,V2,U2,Y2,X1,A9,B1,B2,B3,B4,B5,B6,W2,V3,U3,Y3,X2,B7,B8,B9,C1,C2,C3,C4,W3,V4,U4,Y4,X3,C5,C6,C7,C8,C9,V5,U5,Y5,D1,D2,D3,D4,D5,D6) )).

cnf(myz,axiom,
    ( ~ state(A1,A2,A3,X1,X2,X3,A4,A5,A6,A7,Y3,A8,A9,B1,B2,B3,X4,B4,B5,B6,B7,B8,Y2,B9,C1,C2,C3,C4,X5,C5,C6,C7,C8,C9,Y1,D1,D2,D3,D4,D5,X6,D6,D7,D8,D9,E1,E2,E3,X9,X8,X7,E4,E5,E6)
    | state(A1,A2,A3,Y1,Y2,Y3,A4,A5,A6,A7,X9,A8,A9,B1,B2,B3,X1,B4,B5,B6,B7,B8,X8,B9,C1,C2,C3,C4,X2,C5,C6,C7,C8,C9,X7,D1,D2,D3,D4,D5,X3,D6,D7,D8,D9,E1,E2,E3,X6,X5,X4,E4,E5,E6) )).

cnf(byz,axiom,
    ( ~ state(X1,X2,X3,A1,A2,A3,A4,A5,A6,Y3,A7,A8,A9,B1,B2,B3,B4,X4,W3,W2,W1,Y2,B5,B6,B7,B8,B9,C1,C2,X5,W4,C3,W8,Y1,C4,C5,C6,C7,C8,C9,D1,X6,W5,W6,W7,D2,D3,D4,D5,D6,D7,X9,X8,X7)
    | state(Y1,Y2,Y3,A1,A2,A3,A4,A5,A6,X9,A7,A8,A9,B1,B2,B3,B4,X1,W1,W8,W7,X8,B5,B6,B7,B8,B9,C1,C2,X2,W2,C3,W6,X7,C4,C5,C6,C7,C8,C9,D1,X3,W3,W4,W5,D2,D3,D4,D5,D6,D7,X6,X5,X4) )).

cnf(lxz,axiom,
    ( ~ state(X1,A1,A2,X2,A3,A4,X3,A5,A6,W1,W2,W3,X4,A7,A8,A9,B1,B2,B3,B4,Y3,W8,B5,W4,X5,B6,B7,B8,B9,C1,C2,C3,Y2,W7,W6,W5,X6,C4,C5,C6,C7,C8,C9,D1,Y1,X7,D2,D3,X8,D4,D5,X9,D6,D7)
    | state(Y1,A1,A2,Y2,A3,A4,Y3,A5,A6,W7,W8,W1,X1,A7,A8,A9,B1,B2,B3,B4,X9,W6,B5,W2,X2,B6,B7,B8,B9,C1,C2,C3,X8,W5,W4,W3,X3,C4,C5,C6,C7,C8,C9,D1,X7,X4,D2,D3,X5,D4,D5,X6,D6,D7) )).

cnf(mxz,axiom,
    ( ~ state(A1,X1,A2,A3,X2,A4,A5,X3,A6,A7,A8,A9,B1,X4,B2,B3,B4,B5,B6,Y3,B7,B8,B9,C1,C2,X5,C3,C4,C5,C6,C7,Y2,C8,C9,D1,D2,D3,X6,D4,D5,D6,D7,D8,Y1,D9,E1,X7,E2,E3,X8,E4,E5,X9,E6)
    | state(A1,Y1,A2,A3,Y2,A4,A5,Y3,A6,A7,A8,A9,B1,X1,B2,B3,B4,B5,B6,X9,B7,B8,B9,C1,C2,X2,C3,C4,C5,C6,C7,X8,C8,C9,D1,D2,D3,X3,D4,D5,D6,D7,D8,X7,D9,E1,X4,E2,E3,X5,E4,E5,X6,E6) )).

cnf(rxz,axiom,
    ( ~ state(A1,A2,X1,A3,A4,X2,A5,A6,X3,A7,A8,A9,B1,B2,X4,W3,W2,W1,Y3,B3,B4,B5,B6,B7,B8,B9,X5,W4,C1,W8,Y2,C2,C3,C4,C5,C6,C7,C8,X6,W5,W6,W7,Y1,C9,D1,D2,D3,X7,D4,D5,X8,D6,D7,X9)
    | state(A1,A2,Y1,A3,A4,Y2,A5,A6,Y3,A7,A8,A9,B1,B2,X1,W1,W8,W7,X9,B3,B4,B5,B6,B7,B8,B9,X2,W2,C1,W6,X8,C2,C3,C4,C5,C6,C7,C8,X3,W3,W4,W5,X7,C9,D1,D2,D3,X4,D4,D5,X5,D6,D7,X6) )).

%--------------------------------------------------------------------------
