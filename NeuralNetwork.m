close all; clear all; clc;

inputs = [1 3 5 4 12 15 11 14 7 9 10 2 6 8 13];
outputs = [-0.84 3.66 14.77 8.75 102.96 166.25 85.51 142.62 29.82 53.58 68.92 0.26 21.58 40.38 121.70];

% create a neural network
net = network(1,2,[1;0], [1;0], [0 0;1 0], [0 1]);

% adding neurons
net.layers{1}.size = 500;
% hidden layer transfer/activation function
net.layers{1}.transferFcn = 'logsig';


net = configure(net,inputs,outputs);
weights = getwb(net);
% view(net);

% see the first response without training
initial_output= net(inputs);

% network training
net.trainFcn ='trainlm';
net.PerformFcn = 'mse';
net.trainParam.epochs=980;
net = train(net,inputs, outputs);

% Let's see the final output
final_output = net(inputs);