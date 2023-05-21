% Title: Chinese Recipe
% Desc: Create own ScoobyDo
% Author: JIAYUAN YU
% Date: 03/30/2023


% Chinese Rice translating expert system - main controls

rice_translating :-
  intro,
  write( 'Answer all questions y for yes or n for no.'),nl,
  clear_stored_answers,
  try_all_possibilities.

try_all_possibilities :-  % backtrack through all
  may_be(D),		  % possibilities
  explain(D),
  fail.

try_all_possibilities.	  % then succeed with no further action.

% case knowledge base - user responses

:- dynamic(stored_answer/2).

% procedure to get rid of previous responses
% without abolishing the dynamic declaration

clear_stored_answers :- retract(stored_answer(_,_)),fail.
clear_stored_answers.

% procedure to ask the user a question and recieve an
%  answer, or retrieve the result if already asked

user_says(Q,A) :- stored_answer(Q,A).

user_says(Q,A) :-
  \+ stored_answer(Q,_),
  nl,nl,
  ask_question(Q),
  get_yes_or_no(Response),
  asserta(stored_answer(Q,Response)),
  Response = A.

% Prompt that obtains a yes or no answer

get_yes_or_no( Result ) :-
  get(Char),	% read a single character
  get0(_),      % consume the return after it
  interpret(Char,Result),
  !.            % cut - only one result.

get_yes_or_no( Result ) :-
  nl,
  write('Type y or n'),
  get_yes_or_no( Result ).

interpret(89,yes).	% ASCII 89 = 'Y'
interpret(121,yes).	% ASCII 121 = 'y'
interpret(78,no).	% ASCII 78 = 'N'
interpret(110,no).	% ASCII 110 = 'n'

% Simple rice translating expert system - customized additions.

intro :-
  write( 'This program identifies a character on ' ),nl,
  write( 'Rice expert!"'),nl.

% possibilities

may_be( steam_rice ) :-
  user_says(white,yes).

may_be( vegShrimpFriedRice ) :-
  user_says(white,no),  % This is True!!!
  user_says(vegetable,yes), % Q = vegetable and A = yes
  user_says(beef,no), % Q = beef and A = no
  user_says(shrimp,yes). % Q = shrimp and A = yes
  
may_be( vegFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,yes),
  user_says(beef,no),
  user_says(shrimp,no).

may_be( combinationalFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,yes),
  user_says(beef,yes),
  user_says(shrimp,yes).

may_be( vegBeefFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,yes),
  user_says(beef,yes),
  user_says(shrimp,no).

may_be( beefShrimpFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,no),
  user_says(beef,yes),
  user_says(shrimp,yes).

may_be( beefFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,no),
  user_says(beef,yes),
  user_says(shrimp,no).

may_be( shrimpFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,no),
  user_says(beef,no),
  user_says(shrimp,yes).

may_be( regularFriedRice ) :-
  user_says(white,no),
  user_says(vegetable,no),
  user_says(beef,no),
  user_says(shrimp,no).

% Text of the questions

ask_question(white) :-  
  write('Is it the white rice '),nl.

ask_question(vegetable) :-  
  write('Does it cook with vegetables? '), nl.

ask_question(beef) :-
  write('Does it cook with beef? '),nl.
  
ask_question(shrimp) :-
  write('Is any shrimp with the rice? '),nl.

% Explanations for the various diagnoses

explain(steam_rice) :- nl,
	write('That is steam rice, Bai mi fan in chinese!'),nl.

explain(vegShrimpFriedRice) :-  nl,
  write('Shu Cai Xia Chao Fan!'),nl.

explain(vegFriedRice) :-  nl,
  write('Su Cai Fan. Su means only vegetable or only Shu Cai in chinese'),nl.

explain(combinationalFriedRice) :-  nl,
  write('Zu He Chao Fan!'),nl.

explain(vegBeefFriedRice) :-  nl,
  write('Shu Cai Niu Rou Chao Fan!'),nl.

explain(beefShrimpFriedRice) :-  nl,
  write('Niu Rou Xia Chao Fan!'),nl.
  
explain(beefFriedRice) :-  nl,
  write('Niu Rou Fan or Niu Rou Chao Fan!'),nl.
  
explain(shrimpFriedRice) :-  nl,
  write('Xia Chao Fan, the most popular one from American Chinese 
  Restaurant!'),nl.
  
explain(regularFriedRice) :-  nl,
  write('Regular fried rice, in Chinese traditional menu, it means soy sauce 
  fried rice'),nl.
