% David Watson
% 10/27/17
% Machine Learning
close all
clear; clc

% Loading the dataset
filename = 'DataSetTrain.xlsx';
dataSet = xlsread(filename);
% Storing the values in seperate matrices

x = dataSet(:, 1);
y = dataSet(:, 2);

% Do you want feature normalization?
normalization = true;

% Applying mean normalization to our dataset
if (normalization)
    maxX = maxie(x);
    minX = minie(x);
    x = (x - maxX) / (maxX - minX);
end

% Adding a column of ones to the beginning of the 'x' matrix
x = [ones(length(x), 1) x];
% Plotting the dataset
figure;
plot(x(:, 2), y, 'rx', 'MarkerSize', 10);

xlabel('Size ( squared meters )');
ylabel('Price');
title('Housing Prices'); 

% Running gradient descent on the data
% 'x' is our input matrix
% 'y' is our output matrix
% 'parameters' is a matrix containing our initial theta and slope
parameters = [0; 0];
learningRate = 0.1;
repetition = 200;
[parameters, costHistory] = gradient(x, y, parameters, learningRate, repetition);

% Plotting our final hypothesis
figure;
plot(min(x(:, 2)):max(x(:, 2)), parameters(1) + parameters(2) * (min(x(:, 2)):max(x(:, 2))));
hold on;

% Plotting the dataset on the same figure
plot(x(:, 2), y, 'rx', 'MarkerSize', 10);
% Plotting our cost function on a different figure to see how we did
figure;
plot(costHistory, 1:repetition);


% Finally predicting the output of the provided input
filername = 'DataSetTrain.xlsx';
fill = xlsread(filername);
yy = fill(:, 2);
input = yy;
if (normalization)
    input = (input - maxX) / (maxX - minX);
end
output = parameters(1) + parameters(2) * input;
fprintf('The prices of the 70% test homes. \n')
disp(output);

