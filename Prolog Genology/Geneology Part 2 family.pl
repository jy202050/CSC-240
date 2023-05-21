% A knowledge base for a family
% Title: Geneology Part 2
% Desc: Create definitions for geneology rules
% Author: JIAYUAN YU
% Date: 03/20/2023

male(ericTrump).
male(barronTrump).
male(donaldTrump).
male(donaldTrumpJr).
male(fredTrump).
male(fredTrumpJr).
male(robertTrump).

female(ivankaTrump).
female(tiffanyTrump).
female(maryTrump).
female(maryanneTrump).
female(elizabethTrump).
female(ivanaTrump).
female(marlaMaples).
female(melaniaTrump).

lifespan(maryTrump, birth_1912, death_2000).
lifespan(fredTrump, birth_1905, death_1999).

parentOf(ivanaTrump, donaldTrumpJr).
parentOf(donaldTrump, donaldTrumpJr).
parentOf(ivanaTrump, ivankaTrump).
parentOf(donaldTrump, ivankaTrump).
parentOf(ivanaTrump, ericTrump).
parentOf(donaldTrump, ericTrump).
parentOf(marlaMaples,tiffanyTrump).
parentOf(donaldTrump, tiffanyTrump).
parentOf(melaniaTrump, barronTrump).
parentOf(donaldTrump, barronTrump).
parentOf(maryTrump, maryanneTrump).
parentOf(fredTrump, maryanneTrump).
parentOf(maryTrump, donaldTrump).
parentOf(fredTrump, donaldTrump).
parentOf(maryTrump, fredTrumpJr).
parentOf(fredTrump, fredTrumpJr).
parentOf(maryTrump, elizabethTrump).
parentOf(fredTrump, elizabethTrump).
parentOf(maryTrump, robertTrump).
parentOf(fredTrump, robertTrump).


rulerof(donaldTrump,country_US, yearbegan_2017, yearended_2021).




% Geneology Part 2

% Rule: motherOf
motherOf(Mom, Child) :- parentOf(Mom, Child), female(Mom).


% Rule: fatherOf
fatherOf(Father, Child) :- parentOf(Father, Child), male(Father).


% Rule: sonOf
sonOf(Son, Parent)  :- parentOf(Parent, Son), male(Son).


% Rule: daughterOf
daughterOf(Daughter, Parent) :- parentOf(Parent, Daughter), female(Daughter).


% Rule: brotherOf
brotherOf(Brother, Y) :- siblingOf(Brother, Y), 
                         male(Brother),
                         male(Y).


% Rule: sisterOf
sisterOf(Sister, Y) :- siblingOf(Sister, Y), 
                       female(Sister),
                       female(Y).


% Rule: siblingOf
siblingOf(X, Y) :- parentOf(Parent, X), parentOf(Parent, Y).


% Rule: auntOf
auntOf(Aunt, Child) :- parentOf(Parent, Child),
                       siblingOf(Aunt, Parent),
                       female(Aunt).
                     

% Rule: grandparentOf
grandparentOf(GP, Child) :- parentOf(GP,P), parentOf(P, Child).


% Rule: ancestorOf
ancestorOf(X, Y) :- parentOf(X, Y).
ancestorOf(X, Y) :- parentOf(X, Z), ancestorOf(Z, Y).


% Rule: descendentOf
descendentOf(X, Y) :- ancestorOf(Y, X).


% Rule: contemporaryOf, alive at the same time
contemporaryOf(X, Y) :- X \= fredTrump,
                        X \= maryTrump,
                        Y \= fredTrump,
                        Y \= maryTrump.
                        

% Rule: successorOf, assume donaldTrump is the only one(president) in the family
successorOf(X, Y) :- parentOf(X, Y), 
                     X = donaldTrump.














