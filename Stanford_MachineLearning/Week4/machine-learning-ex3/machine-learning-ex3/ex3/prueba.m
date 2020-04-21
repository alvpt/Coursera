load('ex3data1.mat'); % training data stored in arrays X, y

% Load the weights into variables Theta1 and Theta2
load('ex3weights.mat');
load('all_theta_file.mat')


pred = predict(Theta1, Theta2, X);
