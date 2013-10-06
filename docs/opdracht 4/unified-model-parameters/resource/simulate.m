%cleanup
clc; clear; close;
%load known transistor parameters
load parameters.mat;
%load relevant datapoints
load data.mat;

%set constants
x_start = 0;
x_end = 7;
stepsize = 0.05;
num_steps = (x_end - x_start) / stepsize +1;
V_DS = linspace(x_start, x_end, num_steps);
V_GS = [1, 2, 3, 4, 5];
num_parameters = length(V_GS);

%calculate V_T0
V_T0 = (sqrt(data_I_D(2))*data_V_GS(3) - sqrt(data_I_D(3))*data_V_GS(2))/(sqrt(data_I_D(2)) - sqrt(data_I_D(3)));
%calculate lambda
lambda = (data_I_D(1) - data_I_D(2))/(data_V_DS(1)*data_I_D(2) - data_V_DS(2)*data_I_D(1));
%calculate k and kprime
k = (2*data_I_D(3))/((data_V_GS(3)-V_T0)^2*(1+lambda*data_V_DS(3)));
kprime = parameter_L/parameter_W*k;
%calculate V_DSAT
V_DSAT(1) = (-k*(data_V_GS(4)-V_T0)+sqrt((k*(data_V_GS(4)-V_T0))^2-k*2*data_I_D(4)/(1+lambda*data_V_DS(4))))/(-k);
V_DSAT(2) = (-k*(data_V_GS(4)-V_T0)-sqrt((k*(data_V_GS(4)-V_T0))^2-k*2*data_I_D(4)/(1+lambda*data_V_DS(4))))/(-k);


%setup figure values
colors = hsv(num_parameters);
legend_string = cell(num_parameters, 1);
hold all;

%construct V_min and calculate I_D
V_min = zeros(num_steps,num_parameters);
I_D = zeros(num_steps,num_parameters);

for i = 1 : length(V_GS)
    for j = 1 : num_steps
        V_min(j,i) = min([V_GS(i) V_DS(j) V_DSAT(1)]);
        I_D(j,i) = k*(V_GS(i)*V_min(j,i) - V_min(j,i)^2/2)*(1+lambda*V_DS(j));
    end
    %plot relevant data and construct legend
    plot(V_DS, I_D(:,i), 'color', colors(i,:));
    legend_string{i} = ['V_{GS}: ', num2str(V_GS(i)), ' V'];
end

%display legend
legend(legend_string{:});

%set axes
axis([0 x_end 0 max(max(I_D))]);
xlabel('V_{DS}');
ylabel('I_{D}');