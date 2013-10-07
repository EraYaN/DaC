%simulate.m
%
%Robin Hes - TU Delft
%
%A script to calculate and subsequently simulate a set of parameters from
%Rabaey's CMOS model, using a given set of datapoints and simulation data

%cleanup
clc; clear; close all;
%load known transistor parameters
load parameters.mat;
%load simulation data
load sim.mat;

%set constants
num_parameters = length(sim_V_GS1);
num_steps = length(sim_V_DS1);

%set parameter calculation preconditions
%DATAPOINT:     1       2       3       4
data_V_DS = [   2.2     1.6     1.6     5];
data_V_GS = [   1.2     1.2     1.4     5];
data_I_D = zeros(length(data_V_DS), 1);

for i = 1 : length(data_V_DS)
    data_I_D_y = find(sim_V_GS1 == data_V_GS(i), 1, 'first');
    data_I_D_x = find(sim_V_DS1 == data_V_DS(i), 1, 'first');
    data_I_D(i) = sim_I_D1(data_I_D_x, data_I_D_y);
end

%calculate V_T0 (datapoints 2 and 3)
model_V_T0 = (sqrt(data_I_D(2))*data_V_GS(3) - sqrt(data_I_D(3))*data_V_GS(2))/(sqrt(data_I_D(2)) - sqrt(data_I_D(3)));
%calculate lambda (datapoints 1 and 2)
model_lambda = (data_I_D(1) - data_I_D(2))/(data_V_DS(1)*data_I_D(2) - data_V_DS(2)*data_I_D(1));
%calculate k and kprime (datapoint 3)
model_k = (2*data_I_D(3))/((data_V_GS(3)-model_V_T0)^2*(1+model_lambda*data_V_DS(3)));
model_kprime = parameter_L/parameter_W*model_k;
%calculate V_DSAT (datapooint 4)
model_V_DSAT(1) = (-model_k*(data_V_GS(4)-model_V_T0) + sqrt((model_k*(data_V_GS(4)-model_V_T0))^2 - model_k*2*data_I_D(4) / (1+model_lambda*data_V_DS(4))))/(-model_k);
model_V_DSAT(2) = (-model_k*(data_V_GS(4)-model_V_T0) - sqrt((model_k*(data_V_GS(4)-model_V_T0))^2 - model_k*2*data_I_D(4) / (1+model_lambda*data_V_DS(4))))/(-model_k);

%setup figure values
colors = hsv(num_parameters);
legend_string = cell((num_parameters - 1)/5, 1);
h = zeros((num_parameters - 1)/5,1);
hold all;

%construct V_min and calculate I_D
model_V_min = zeros(num_steps,num_parameters);
model_I_D = zeros(num_steps,num_parameters);

for i = 1 : length(sim_V_GS1)
    for j = 1 : num_steps
        model_V_min(j,i) = min([(sim_V_GS1(i)-model_V_T0) sim_V_DS1(j) model_V_DSAT(1)]);
        
        if (sim_V_GS1(i)-model_V_T0) < 0
            model_I_D(j,i) = 0;
        else
            model_I_D(j,i) = model_k*((sim_V_GS1(i)-model_V_T0)*model_V_min(j,i) - model_V_min(j,i)^2/2)*(1+model_lambda*sim_V_DS1(j));
        end
    end
    
    if mod(i-1, 5) == 0 &&  i > 1
        %plot relevant data and construct legend
        figure(1);
        h(ceil((i-1)/5)) = plot(sim_V_DS1, model_I_D(:,i), 'color', colors(i,:));
        plot(sim_V_DS1, sim_I_D1(:,i),'--', 'color', colors(i,:) );
        legend_string{(i-1)/5} = ['V_{GS}: ', num2str(sim_V_GS1(i)), ' V'];
    end
end

%save data
save('model', 'model_V_T0', 'model_lambda', 'model_k', 'model_V_DSAT', 'model_V_min', 'model_I_D');

%display legend and set axes
figure(1);
legend(h(:), legend_string{:});
axis([0 max(sim_V_DS1) 0 max(max(model_I_D))]);
xlabel('V_{DS}');
ylabel('I_{D}');