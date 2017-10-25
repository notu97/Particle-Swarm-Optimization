%% Particle Swarm Optimization Simulation
% Find minimum of  the objective function
%% Initialization

clear
clc
iterations = 30;
inertia = 1.0;
correction_factor = 2.0;
swarms = 50;

% ---- initial swarm position -----
swarm=zeros(50,7);
step = 1;
for i = 1 : 50
swarm(step, 3:7) = i;
step = step + 1;
end
% swarm(:,1)=[-3:(6/49):3];
% swarm(:,2)=[-2:(4/49):2];
swarm(:,1)=randn(1,50);
swarm(:,2)=randn(1,50);
swarm(:, 7) = 1000;       % Greater than maximum possible value
swarm(:, 5) = 0;          % initial velocity
swarm(:, 6) = 0;          % initial velocity

%% Iterations
for iter = 1 : iterations
    
    %-- position of Swarms ---
    for i = 1 : swarms
        swarm(i, 1) = swarm(i, 1) + swarm(i, 5)/2;     %update u position
        swarm(i, 2) = swarm(i, 2) + swarm(i, 6)/2;   %update v position
        u = swarm(i, 1);
        v = swarm(i, 2);
        
        value = ((4-(2.1*u^2)+(u^4/3))*u^2)+u*v+(-4+(4*(v^2)))*v^2;          %six hump camel hump back function
        
        if value < swarm(i, 7)           
            swarm(i, 3) = swarm(i, 1);    % update best position of u,
            swarm(i, 4) = swarm(i, 2);    % update best postions of v,
            swarm(i, 7) = value;          % best updated minimum value
        end
    end

    [temp, gbest] = min(swarm(:, 7));        % gbest position
    
    %--- updating velocity of swarms 
    for i = 1 : swarms
        swarm(i, 5) = rand*inertia*swarm(i, 5) + correction_factor*rand*(swarm(i, 3)...
            - swarm(i, 1)) + correction_factor*rand*(swarm(gbest, 3) - swarm(i, 1));   % u velocity parameters
        swarm(i, 6) = rand*inertia*swarm(i, 6) + correction_factor*rand*(swarm(i, 4)...
            - swarm(i, 2)) + correction_factor*rand*(swarm(gbest, 4) - swarm(i, 2));   % v velocity parameters
    end
    
    %% Plotting
    clf    
    plot(swarm(:, 1), swarm(:, 2), 'x')   % drawing swarms
    legend('Swarm')
    xlabel('u')
    ylabel('v') 
    axis([-3 3 -2 2])
pause(.1)
end
