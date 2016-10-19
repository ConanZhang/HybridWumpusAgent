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
%     CS4300_hybrid_agent(50);
% Author:
%     Rajul Ramchandani & Conan Zhang
%     UU
%     Fall 2016
%

persistent KB;
persistent t;
persistent plan;
persistent safe ;
persistent visited;
persistent unvisited;
persistent current;


if isempty(KB)
    KB = CS4300_generate_default_KB();
end

if isempty(safe)
    safe = [];
end

if isempty(unvisited)
    unvisited = [];
end

if isempty(t)
   t = 0; 
end

if isempty(visited)
   visited = ones(4,4);
end

if isempty(current)
   current.x = 1;
   current.y = 1; 
   current.r = 0; 
end

pit_numbers= [1,2,3,4;5,6,7,8;9,10,11,12; 13,14,15,16];
pno = pit_numbers(current.x, current.y);

CS4300_tell(KB, CS4300_make_percept_sentence(current, percept, t));
safe(current.x, current.y) = 1;
visited(current.x, current.y) = 0;

% Glitter Ask
if CS4300_ask(KB, pno + 64)
    plan(end+1) = 4;
    plan(end+1) = CS4300_plan_route_(current, [1,1,0], safe);
    plan(end+1) = 6;
end

% Unvisited Ask
if isempty(plan)
   unvisited 
   plan = CS4300_plan_route(current, safe);
end

% Take Risk
if isempty(plan)
   not_unsafe 
   plan = CS4300_plan_route(current, safe);
end

% Last is Empty check
if isempty(plan)
    plan(end+1) = CS4300_plan_route(current, [1,1,0], safe);
    plan(end+1) = 6;
end

action = plan(1);
plan = plan(:,2:end);
current = move_agent(current, action); %move agent


t = t + 1;

end


function agent = move_agent(current, action)
agent = current; 
if action==2
    agent.r = mod(agent.dir-1,4);
    return
end

if action==3
    agent.r = mod(agent.dir+1,4);
    return
end
if action ==1
    if agent.r==0 && agent.x~=4
        agent.x = agent.x+1;
        return
    end

    if agent.r==1 && agent.y~=4
        agent.y = agent.y+1;
        return
    end
    
    if agent.r==2 && agent.x~=1
        agent.x = agent.x-1;
        return
    end
    
    if agent.r==3 && agent.y~=1
        agent.y = agent.y-1;
        return
    end
end

end