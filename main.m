% Prajwal Koirala (4/19/2021)
% statess = [x y theta delta]

close all;
params.g= 9.81; params.L = 1; 


[t, X] = ode23(@(t, statess) kinematic(t, statess, params), [0:0.1:20], [0 0 0 0]');
figure; plot(t, X(:,1))
figure; plot(t, X(:,2))
figure; plot(X(:,1), X(:,2)); axis([-10 10 -10 10]);
