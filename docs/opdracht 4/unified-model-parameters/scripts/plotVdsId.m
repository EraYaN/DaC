%plotVdsId.m
%
%Robin Hes - TU Delft
%
%A script to plot V_DS-I_D simulation data and calculate a threshold
%intersection parabola

%cleanup
clc; clear; close all;
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
colors = hsv(num_parameters);
legend_string = cell(num_parameters+1, 1);
figure;
hold all;

for i = 1:num_parameters 
    %calculate derivatives and second derivatives per sim_V_GS1 
    slope(:,i) = derive(sim_V_DS1, sim_I_D1(:,i));
    sslope(:,i) = derive(sim_V_DS1, slope(:,i));
    
    %calculate saturation threshold parabola intersection points
    minval = min(sslope(:,i)); 
    minindices(i) = find(sslope(:,i) == minval, 1, 'first');
    sat_x(i) = sim_V_DS1(minindices(i));
    sat_y(i) = sim_I_D1(minindices(i),i);
     
    %plot relevant data and construct legend
    plot(sim_V_DS1, sim_I_D1(:,i), 'color', colors(i,:));
    legend_string{i} = ['V_{GS}: ', num2str(sim_V_GS1(i), 2), ' V'];
end

%devise parabola constant and plot data
parabolaavg = mean(sat_y);
%plot(sim_V_DS1, parabolaavg*sim_V_DS1.^2);

%display legend
legend_string{i+1} = 'V_{DS} \approx V_{GS} - V_{T}';
legend(legend_string{:});

%set axes
axis([0 max(sim_V_DS1) 0 max(max(sim_I_D1))]);
xlabel('V_{DS}');
ylabel('I_{D}');