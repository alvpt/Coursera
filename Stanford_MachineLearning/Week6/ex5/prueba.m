load ('ex5data1.mat');
% m = Number of examples
m = size(X, 1);

%  You should now implement the cost function for regularized linear 
%  regression. 
%

theta = [1 ; 1];
%  Train linear regression with lambda = 0
lambda = 0;

p = 8;
X_poly = polyFeatures(X, p);