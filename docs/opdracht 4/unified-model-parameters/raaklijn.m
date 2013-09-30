clf;
hold all;

Slope = zeros(size(I_D,1), size(I_D,2));
SSlope = zeros(size(I_D,1), size(I_D,2));
parabolapoints = zeros(1, size(I_D,2));

for i = 1:size(I_D,2)
    
    Slope(:,i) = derive(V_DS, I_D(:,i));
    SSlope(:,i) = derive(V_DS, Slope(:,i));
    minval = min(SSlope(:,i)); 
    minind = find(SSlope(:,i) == minval, 1, 'last');
    parabolapoints(i) = V_DS(minind);
    plot(V_DS,I_D(:,i));
    hold on;
    plot(V_DS, Slope(:,i));
    hold all;
end

