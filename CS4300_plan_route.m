function action_sequence = CS4300_plan_route(current, goals, board)
% CS4300_ask - Tells whether can resolve theorem with knowledge base
% On input:
%     current: The current position of the agent
%     goals(set of cells) : a set of squares; try to plan a route to one of them 
%     board (set of cells): a set of squares that can form part of the
%     row and col: coordinates of the destination
%     route
% On output:
%     action_sequence (array of ints): sequence of actions to reach goal
% Call:
%     action_sequence = CS4300_plan_route(current, goals, allowed);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%

action_sequence = CS4300_Wumpus_A_star(board, current, goals, 'CS4300_A_star_Man');