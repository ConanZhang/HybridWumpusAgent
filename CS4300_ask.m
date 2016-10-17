function can_resolve = CS4300_ask(KB, thm)
% CS4300_ask - Tells whether can resolve theorem with knowledge base
% On input:
%     KB (array of sentences) : a knowledgebase, initially the atemporal �wumpus physics�
%     thm (CNF data structure): 1 disjunctive clause to be tested
% On output:
%     can_resolve (bool): States whether theorem can be resolved from
%     knowledge base
% Call:
%     can_resolve = CS4300_ask(KB, thm);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%