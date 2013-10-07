function [deriv] = divd(Vds,Id)
    deriv=zeros(length(Id),1);
    for i=1:length(Id)-1
        deriv(i)=(Id(i+1)-Id(i))/(Vds(i+1)-Vds(i));
    end 
end