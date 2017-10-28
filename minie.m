function [ minval ] = minie( x )
%minie Finds the min of an array
%   This function goes through each number comparing each to find the
%   smallest value.
minval = x(1);
 for ii = 1:length(x)
    if x(ii) < minval
        minval = x(ii);
    end
 end

end

