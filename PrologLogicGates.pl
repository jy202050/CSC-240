% Title: Prolog Logic Gates
% Desc: Define the full adder logic by using Prolog
% Author: JIAYUAN YU
% Date: 03/25/2023


%;-----------------------
%; Write the Logic Gate Functions Here
%;-----------------------

% AND Gate Logic   
l_and(0,0,0).    
l_and(0,1,0).
l_and(1,0,0).
l_and(1,1,1).

% OR Gate Logic  
l_or(0,0,0).
l_or(0,1,1).
l_or(1,0,1).
l_or(1,1,0).

% NOT Gate Logic 
l_not(0,1).
l_not(1,0).

% XOR Gate Logic  
l_xor(0,0,0).
l_xor(0,1,1).
l_xor(1,0,1).
l_xor(1,1,0).


%;-----------------------
%; Write the FullAdder Function Here
%;-----------------------


% tempXor1 = A xor B
% tempOr1 = A or B
% tempAnd1 = X and (A or B) , tempAnd2 = A and B
% S =  X xor (A xor B)
% C = (X and (A or B)) or (A and B)

 full_adder(A,B,X,S,C) :- l_xor(A,B,XOR1),l_or(A,B,OR1),l_and(A,B,AND1),
                          l_xor(X,XOR1,S),l_and(X,OR1,AND2),l_or(AND1,AND2,C).
                          

%;-----------------------
%; Write the n-bitAdder Function Here
%;-----------------------


%;-----------------------
%; Below are your test cases.  
%;-----------------------

%(newline)
%(writeln "Testing Logic Gate Methods")
%(newline)
%(andgate 0 0)
%(andgate 0 1)
%(andgate 1 0)
%(andgate 1 1)
%(orgate 0 0)
%(orgate 0 1)
%(orgate 1 0)
%(orgate 1 1)
%(notgate 0)
%(notgate 1)
%(xorgate 0 0)
%(xorgate 0 1)
%(xorgate 1 0)
%(xorgate 1 1)


%(writeln "Testing Fulladder Methods")
%(newline)
%(fulladder 0 0 0)
%(fulladder 0 0 1)
%(fulladder 0 1 0)
%(fulladder 0 1 1)
%(fulladder 1 0 0)
%(fulladder 1 0 1)
%(fulladder 1 1 0)
%(fulladder 1 1 1)

%(writeln "Testing n bit adder Methods")
%(newline)
%(n-bit-addr '(0 1 0) '(0 1 1) 1)
%(n-bit-addr '(1 1 1) '(0 0 0) 1)
%(n-bit-addr '(1 1 0 0 1 0 1 0 1) '(1 0 1 1 0 0 0 1 1) 0)