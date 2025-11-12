% Sove the Temperature application
% Define some constants
Ti = 70;
Tb = 170;

% Use ode45 to solve the differential equation
% Solve for temperature after 10 seconds
[t,T] = ode45(@(t,T) (Tb-T)/10, [0 10], Ti);
n = length(T);

% Report the Temperature after 10 seconds
fprintf("-The Temperature after 10s is %.2f\260F.\n",T(n))

% Solve for temperature after 20 seconds
[t,T] = ode45(@(t,T) (Tb-T)/10, [0 20], Ti);
n = length(T);

% Report the Temperature after 20 seconds
fprintf("-The Temperature after 20s is %.2f\260F.\n",T(n))

% Solve for temperature after 40 seconds
[t,T] = ode45(@(t,T) (Tb-T)/10, [0 40], Ti);
n = length(T);

% Report the Temperature after 40 seconds
fprintf("-The Temperature after 40s is %.2f\260F.\n",T(n))

% Logical Comparison
near160 = T>159.9 & T<160.5;
time160 = t(near160);
fprintf("It will take %.2f seconds for the temperature to reach 160\260F.\n",time160)

% Plot the voltage for one seconds
plot(t,T)
ylim([0 180])
grid on
title("The Temperature of an Object")
xlabel("Time(s)")
ylabel("The Temperature(T)")
