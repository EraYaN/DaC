%plotVdsId.m
%
%Robin Hes - TU Delft
%
%A script to plot V_GS-I_D simulation data

%cleanup
clc; clear;
%load known transistor parameters
load parameters.mat;
%load simulation data
load sim.mat

%prealloc and init loop variables
num_parameters = length(sim_V_DS2);
colors = hsv(num_parameters);
legend_string = cell(num_parameters, 1);

%create figure
figure;
hold all;

for i = 1:num_parameters 
    %plot relevant data and construct legend
    plot(sim_V_GS2, sim_I_D2(:,i), 'color', colors(i,:));
    legend_string{i} = ['V_{DS}: ', num2str(V_DS2(i), 2), ' V'];
end

%add legend
legend(legend_string{:});

%set axes
xlabel('V_{DS}');
ylabel('I_{D}');