data = load('ex1data1.txt');
X = data(:, 1); y = data(:, 2);
m = length(y); % number of training examples



X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters



iterations = 1500;
alpha = 0.01;



fprintf('\nTesting the cost function ...\n')
% compute and display initial cost
K = computeCost(X, y, [0 ; 0])