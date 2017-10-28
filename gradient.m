function [ parameters, costHistory ] = gradient( x, y, parameters, learningRate, repetition );

%gradient Finds the gradient descent
%   Detailed explanation goes here

% Getting the length of our dataset
m = length(y);
% Creating a matrix of zeros for storing our cost function history
costHistory = zeros(repetition, 1); 

% Running gradient descent
for i = 1:repetition        
    % Calculating the transpose of our hypothesis
    h = (x * parameters - y)';        
    % Updating the parameters
    parameters(1) = parameters(1) - learningRate * (1/m) * h * x(:, 1);
    parameters(2) = parameters(2) - learningRate * (1/m) * h * x(:, 2);        
    % Keeping track of the cost function
    costHistory(i) = cost(x, y, parameters);        
end 

costHistory(i) = cost(x, y, parameters);

end

