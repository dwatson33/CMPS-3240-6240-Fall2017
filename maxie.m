function [ maxval ] = maxie( x )
%maxie Finds the max of an array
%   This goes throughotu an array and searches for the max value. 
%   This is done by comring each number.
%   It looks at the first number then compares it to the next and if it
%   is bigger it will change the max value and if it isn't it keeps the 
%   original number then goes to the next.

maxval = x(1);
 for ii = 1:length(x)
    if x(ii) > maxval
        maxval = x(ii);
    end
 end

end

