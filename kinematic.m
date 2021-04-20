function derivatives = kinematic(t, statess, params)
    % statess = [x y theta delta]
    L = params.L;
    theta = statess(3);
    delta = statess(4);
    beta =  atan(tan(delta)/2);
 
    [v phi] = controller(0, statess);
    x_dot = v*cos(theta + beta);
    y_dot = v*sin(theta + beta);
    theta_dot = v*cos(beta)*tan(delta)/L;
    delta_dot = phi;
    derivatives = [x_dot y_dot theta_dot delta_dot]';
end


function [v phi] = controller(r, s)
v = 0.1; phi = 0;
end