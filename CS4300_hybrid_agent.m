function action = CS4300_hybrid_agent(percept)
% CS4300_make_percept_sentence - Takes an agent percept and converts it
% into a sentence
% On input:
%     percept (1x5 Boolean array): percept values
%       (1): Stench variable (neighbors wumpus)
%       (2): Breeze variable (neighbors pit)
%       (3): Glitter variable (cell contains gold)
%       (4): Bump variable (hit wall trying to move)
%       (5): Scream variable (arrow killed wumpus)
% On output:
%     action (int): action for wumpus to take
%       FORWARD = 1;
%       RIGHT = 2;
%       LEFT = 3;
%       GRAB = 4;
%       SHOOT = 5;
%       CLIMB = 6;
% Call:
%     CS4300_hybrid_agent(50,'CS4300_hybrid_agent');
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%
