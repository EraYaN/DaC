%cleanup
clc; clear; close;
%load known transistor parameters
load parameters.mat;
%load simulation data
load sim.mat;

%initialize arrays
num_steps = size(sim_I_D1,1);
num_parameters = size(sim_I_D1,2);
slope = zeros(num_steps, num_parameters);
sslope = zeros(num_steps, num_parameters);
minindices = zeros(1, num_parameters);
sat_x = zeros(1, num_parameters);
sat_y = zeros(1, num_parameters);
V_T0 = zeros(1, num_parameters);
k = zeros(1, num_parameters);
k_n = zeros(1, num_parameters);
colors = hsv(num_parameters);
V_GS_begin = 1;
V_GS_stepsize = 1;
legend_string = cell(num_parameters+1, 1);
hold all;

for i = 1:num_parameters 
    V_GS_temp = V_GS_begin + V_GS_stepsize * (i - 1);
    
    %calculate derivatives and second derivatives per V_GS 
    slope(:,i) = derive(sim_V_DS, sim_I_D1(:,i));
    sslope(:,i) = derive(sim_V_DS, slope(:,i));
    
    %calculate saturation threshold parabola intersection points
    minval = min(sslope(:,i)); 
    minindices(i) = find(sslope(:,i) == minval, 1, 'first');
    sat_x(i) = sim_V_DS(minindices(i));
    sat_y(i) = sim_I_D1(minindices(i),i);
    
    %calculate V_{T0}
    V_T0(i) = V_GS_temp - sat_x(i);
    
    %calculate k'_{n}
    k(i) = 2 * sat_y(i) / (sat_x(i)^2);
    k_n(i) = k(i) * parameter_L / parameter_W;
    
    %plot relevant data and construct legend
    plot(sim_V_DS, sim_I_D1(:,i), 'color', colors(i,:));
    legend_string{i} = ['V_{GS}: ', num2str(V_GS_begin + V_GS_stepsize * (i - 1), 2), ' V'];
end

%devise parabola constant and plot data
parabolaavg = mean(sat_y);
plot(sim_V_DS, parabolaavg*sim_V_DS.^2);

%display legend
legend_string{i+1} = 'V_{DS} \approx V_{GS} - V_{T}';
legend(legend_string{:});

%set axes
axis([0 max(sim_V_DS) 0 max(max(sim_I_D1))]);
xlabel('V_{DS}');
ylabel('I_{D}');