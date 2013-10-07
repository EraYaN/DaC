%cleanup
clc; clear; close all;
%load known transistor parameters
load parameters.mat;
%load simulation data
load sim.mat;
%plot spice simulation
plotVds;
figure;

%set constants
num_parameters = length(sim_V_GS1);
num_steps = length(sim_V_DS1);

%set parameter calculation preconditions
%DATAPOINT:     1       2       3       4
data_V_DS = [   3       2.4     2.4     5];
data_V_GS = [   0.8     0.8     1.8     5];
data_I_D = zeros(length(data_V_DS), 1);

for i = 1 : length(data_V_DS)
    data_I_D_y = find(sim_V_GS1 == data_V_GS(i), 1, 'first');
    data_I_D_x = find(sim_V_DS1 == data_V_DS(i), 1, 'first');
    data_I_D(i) = sim_I_D1(data_I_D_x, data_I_D_y);
end

%calculate V_T0
V_T0 = 0.7; %(sqrt(data_I_D(2))*data_V_GS(3) - sqrt(data_I_D(3))*data_V_GS(2))/(sqrt(data_I_D(2)) - sqrt(data_I_D(3)));
%calculate lambda
lambda = 0.06; %(data_I_D(1) - data_I_D(2))/(data_V_DS(1)*data_I_D(2) - data_V_DS(2)*data_I_D(1));
%calculate k and kprime
k = 0.65e-3; %(2*data_I_D(3))/((data_V_GS(3)-V_T0)^2*(1+lambda*data_V_DS(3)));
kprime = parameter_L/parameter_W*k;
%calculate V_DSAT
V_DSAT(1) = 1.7;%(-k*(data_V_GS(4)-V_T0)+sqrt((k*(data_V_GS(4)-V_T0))^2-k*2*data_I_D(4)/(1+lambda*data_V_DS(4))))/(-k);
V_DSAT(2) = (-k*(data_V_GS(4)-V_T0)-sqrt((k*(data_V_GS(4)-V_T0))^2-k*2*data_I_D(4)/(1+lambda*data_V_DS(4))))/(-k);

%setup figure values
colors = hsv(num_parameters);
legend_string = cell((num_parameters-1)/5, 1);
hold all;

%construct V_min and calculate I_D
V_min = zeros(num_steps,num_parameters);
I_D = zeros(num_steps,num_parameters);

for i = 1 : length(sim_V_GS1)
    for j = 1 : num_steps
        V_min(j,i) = min([sim_V_GS1(i) sim_V_DS1(j) V_DSAT(1)]);
        I_D(j,i) = k*(sim_V_GS1(i)*V_min(j,i) - V_min(j,i)^2/2)*(1+lambda*sim_V_DS1(j));
    end
    
    if mod(i, 5) == 0
        %plot relevant data and construct legend
        plot(sim_V_DS1, I_D(:,i), 'color', colors(i,:));
        legend_string{i/5} = ['V_{GS}: ', num2str(sim_V_GS1(i)), ' V'];
    end
end

%display legend
legend(legend_string{:});

%set axes
axis([0 max(sim_V_DS1) 0 max(max(I_D))]);
xlabel('V_{DS}');
ylabel('I_{D}');