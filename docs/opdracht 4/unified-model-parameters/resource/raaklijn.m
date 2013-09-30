%cleanup
clf; clc; clear;
hold all;
load parameters.mat;

%initialize arrays
slope = zeros(size(I_D,1), size(I_D,2));
sslope = zeros(size(I_D,1), size(I_D,2));
minindices = zeros(1, size(I_D,2));
parabolapoints = zeros(1, size(I_D,2));
colors = hsv(size(I_D,2));


for i = 1:size(I_D,2) 
    %calculate derivatives and second derivatives per V_GS 
    slope(:,i) = derive(V_DS, I_D(:,i));
    sslope(:,i) = derive(V_DS, slope(:,i));
    
    %calculate parabola intersection points
    minval = min(sslope(:,i)); 
    minindices(i) = find(sslope(:,i) == minval, 1, 'first');
    parabolapoints(i) = I_D(minindices(i),i);
    
    %plot relevant data
    plot(V_DS, I_D(:,i), 'color', colors(i,:));
    plot(V_DS, slope(:,i), 'color', colors(i,:));
end

%devise parabola constant and plot data
parabolaavg = mean(parabolapoints);
plot(V_DS, parabolaavg*V_DS.^2);

%limit axes
axis([0 max(V_DS) 0 max(max(I_D))]);