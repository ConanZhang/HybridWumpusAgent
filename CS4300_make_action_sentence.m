function sentence = CS4300_make_action_sentence(action, t)
% CS4300_ask - Tells whether can resolve theorem with knowledge base
% On input:
%     action (int): action for wumpus to take
%       FORWARD = 1;
%       RIGHT = 2;
%       LEFT = 3;
%       GRAB = 4;
%       SHOOT = 5;
%       CLIMB = 6;
%     t (int): a counter indicating time
% On output:
%     sentence (CNF data structure): conjuctive clauses
%       (i).clauses
%           each clause is a list of integers (- for negated literal)
% Call:
%     sentence = CS4300_make_action_sentence(1, 1);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%
