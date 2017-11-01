% David Watson
% 10/27/17
% Machine Learning
close all
clear; clc

% Loading the dataset
filename = 'atam.topwords.xlsx';
[num, txt, raw] = xlsread(filename);
% Storing the values in seperate matrices

ailmentID = num(:, 1);
GST = txt(:, 1);
word = txt(:, 2);
percentage = num(:,4);


letterG = 'G'; %general
letterS = 'S'; %sympton
letterT = 'T'; %treatment

% No train data, just test data
% takes in the given to check if they are 0 or 1
% G is 0 so does not attain to the problem, not sick
% S and T are those that attain to sickness so 1
BB = 100;
f = randperm(34342,BB);
A = 1;
a = 0;
%hold on;

pon = zeros(1,BB); % positive or negative
AID = zeros(1,BB); % ailment ID array
PER = zeros(1,BB); %percentage also 
while (A < BB)
    GSTWORD = GST(f(1,A));
    if strcmp(GSTWORD, 'G')
        a = 0;
        %plot([ailmentID], [percentage], 'bo', 'MarkerSize', 10);
    else
        a = 1;
        %plot([ailmentID], [percentage], 'rx', 'MarkerSize', 10);
%     elseif strcmp(GSTWORD, 'S')
%         a = 1;
%         plot(ailmentID, percentage, 'rx', 'MarkerSize', 10);
%     elseif strcmp(GSTWORD, 'T')
%         a = 1;
%         plot(ailmentID, percentage, 'rx', 'MarkerSize', 10);
    end
    pon(:,A) = a;
    AID(:,A) = ailmentID(f(1,A));
    PER(:,A) = percentage(f(1,A));
    A = A + 1;
end

plot(AID(1,:), PER(1,:), 'rx', 'MarkerSize', 10)

% letterG = double(letterG);
% letterS = double(letterS);
% letterT = double(letterT);
% yy = y(32662,1)
% 
% yy = double(yy)
% 
% yy = double(y(32662,1))


