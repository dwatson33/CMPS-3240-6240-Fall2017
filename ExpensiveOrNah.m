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

maxX = maxie(y)
minX = minie(y)

av = (minX+maxX)/2

plot(x(:, 1), y, 'rx', 'MarkerSize', 10);
xlabel('Size ( squared meters )');
ylabel('Price');
title('Housing Prices'); 

hold on;
plot([500, 1000, 1500, 2000, 2500, 3000, 3500, 4500], [1030000, 930000, 800000, 700000, 500000, 370000, 250000, 10000], 'MarkerSize', 10)
hold off;
