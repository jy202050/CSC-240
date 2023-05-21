# A knowledge base for a family
% Title: Geneology 
% Desc: Define the facts for at least twelve people and at least three generations
% Author: JIAYUAN YU
% Date: 03/19/2023

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




