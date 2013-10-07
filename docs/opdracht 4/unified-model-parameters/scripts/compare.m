%compare.m
%
%Robin Hes - TU Delft
%
%A script to calculate average deviation between CMOS SPICE simulation and
%CMOS simulation using Rabaey's model

%cleanup
clc; clear; close all;
%load simulation data
load sim.mat;
%load model and model simulation data
load model.mat;

delta_I_D = abs(sim_I_D1 - model_I_D);
column_avg_I_D = zeros(size(delta_I_D, 2), 1);
column_avg_delta_I_D = zeros(size(delta_I_D, 2), 1);

for i = 1:size(delta_I_D, 2)
    column_avg_I_D(i) = mean(sim_I_D1(:,i), 1);
    column_avg_delta_I_D(i) = mean(delta_I_D(:,i), 1);
end

%calculate and plot relative deviation for different values of V_GS
rel_dev = (column_avg_delta_I_D ./ column_avg_I_D(i))*100;
plot(sim_V_GS1, rel_dev);
xlabel('V_{GS}');
ylabel('Relatieve afwijking in %');