function [ cost ] = cost( x, y, parameters )
    %   Calculates the cost function our mean square error function
    cost = (x * parameters - y)' * (x * parameters - y) / (2 * length(y));    
 
end