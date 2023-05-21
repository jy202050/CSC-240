% Simple scooby-doo expert system - main controls

rooby_roo :-
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

% Simple scooby-doo expert system - customized additions.

intro :-
  write( 'This program identifies a character on ' ),nl,
  write( 'the cartoon "Scooby Doo, Where Are You?."'),nl.

% possibilities

may_be( scooby_doo ) :-
  user_says(dog,yes).

may_be( shaggy ) :-
  user_says(dog,no),  % This is True!!!
  user_says(male,yes), % Q = male and A = yes
  user_says(neckware,no). % Q = neckware and A = no

may_be( freddie ) :-
  user_says(dog,no),
  user_says(male,yes),
  user_says(neckware,yes).

may_be( daphne ) :-
  user_says(dog,no),
  user_says(male,no),
  user_says(neckware,yes).

may_be( velma ) :-
  user_says(dog,no),
  user_says(male,no),
  user_says(neckware,no).

% Text of the questions

ask_question(dog) :-  write('Is it a dog? (Ris it a rog?) '),nl.

ask_question(male) :-  write('Is the character a male? '), nl.

ask_question(neckware) :-
  write('Is the character wearing a scarf '),nl,
  write('or some kind of neckware '),nl,
  write('(a turtleneck sweater does not count)? '),nl.

% Explanations for the various diagnoses

explain(scooby_doo) :- nl,
	write('That is Scooby Doo, silly.'),nl.

explain(shaggy) :-  nl,
  write('He is named Norville "Shaggy" Rogers.'),nl.

explain(freddie) :-  nl,
  write('He is named Fred "Freddie" Jones.'),nl.

explain(daphne) :-  nl,
  write('She is named Daphne Blake.'),nl.

explain(velma) :-  nl,
  write('She is named Velma Dinkley.'),nl.
