%cleanup
clf; clc; clear;
hold all;
load parameters.mat;

%initialize arrays
num_steps = size(I_D,1);
num_parameters = size(I_D,2);
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

for i = 1:num_parameters 
    V_GS = V_GS_stepsize * (i - 1);
    
    %calculate derivatives and second derivatives per V_GS 
    slope(:,i) = derive(V_DS, I_D(:,i));
    sslope(:,i) = derive(V_DS, slope(:,i));
    
    %calculate saturation threshold parabola intersection points
    minval = min(sslope(:,i)); 
    minindices(i) = find(sslope(:,i) == minval, 1, 'first');
    sat_x(i) = V_DS(minindices(i));
    sat_y(i) = I_D(minindices(i),i);
    
    %calculate V_{T0}
    V_T0(i) = V_GS - V_DS(i);
    
    %calculate k'_{n}
    k(i) = 2 * sat_y(i) / sat_x(i)^2;
    k_n(i) = k(i) * L / W;
    
    %plot relevant data and construct legend
    plot(V_DS, I_D(:,i), 'color', colors(i,:));
    legend_string{i} = ['V_{GS}: ', num2str(V_GS_begin + V_GS_stepsize * (i - 1), 2), ' V'];
end

%devise parabola constant and plot data
parabolaavg = mean(sat_y);
plot(V_DS, parabolaavg*V_DS.^2);

%display legend
legend_string{i+1} = 'V_{DS} = V_{GS} - V_{T}';
legend(legend_string{:});

%limit axes
axis([0 max(V_DS) 0 max(max(I_D))]);