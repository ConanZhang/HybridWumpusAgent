function sentence = CS4300_make_percept_sentence(percept, t)
% CS4300_make_percept_sentence - Takes an agent percept and converts it
% into a sentence
% On input:
%     percept (1x5 Boolean array): percept values
%       (1): Stench variable (neighbors wumpus)
%       (2): Breeze variable (neighbors pit)
%       (3): Glitter variable (cell contains gold)
%       (4): Bump variable (hit wall trying to move)
%       (5): Scream variable (arrow killed wumpus)
%     t (int): a counter indicating time
% On output:
%     sentence (CNF data structure): conjuctive clauses
%       (i).clauses
%           each clause is a list of integers (- for negated literal)
% Call:
%     [s,t] = CS4300_make_percept_sentence(50,'CS4300_hybrid_agent');
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%
