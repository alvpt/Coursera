function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)
%NNCOSTFUNCTION Implements the neural network cost function for a two layer
%neural network which performs classification
%   [J grad] = NNCOSTFUNCTON(nn_params, hidden_layer_size, num_labels, ...
%   X, y, lambda) computes the cost and gradient of the neural network. The
%   parameters for the neural network are "unrolled" into the vector
%   nn_params and need to be converted back into the weight matrices. 
% 
%   The returned parameter grad should be a "unrolled" vector of the
%   partial derivatives of the neural network.
%

% Reshape nn_params back into the parameters Theta1 and Theta2, the weight matrices
% for our 2 layer neural network
Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

% Setup some useful variables
m = size(X, 1);

% You need to return the following variables correctly 
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================
% Instructions: You should complete the code by working through the
%               following parts.
%
% Part 1: Feedforward the neural network and return the cost in the
%         variable J. After implementing Part 1, you can verify that your
%         cost function computation is correct by verifying the cost
%         computed in ex4.m

% Para calcular el coste se utilizarán matrices, dada la rapidez que proporcionan.
% Las etiquetas son pasadas como un array de 5000x1, cuyos valores van del 1 al 10, 
% y para adaptares al número de neuronas de la capa final, se convertirá en una
% matriz de 5000x10

size_y = size(y, 1);
y_matrix = [];

for i=1:size_y
  y_row = zeros(1,num_labels);
  y_row(1, y(i,1)) = 1;  
  y_matrix = [y_matrix; y_row];
   
endfor


% Para calcular el output de la red neuronal, se realizarán los cáculos 
% expuestos en el documento que acompaña a este ejercicio

X = [ones(m,1) X];
X = X';
a1 = X;

z2 = Theta1*a1;
a2 = [ones(1, m); sigmoid(z2)];

z3 = Theta2*a2;
a3 = sigmoid(z3);

% A continuación, se introducen estas matrices dentro de la función de coste, 
% sin regularizar

%y_unrolled = y_matrix(:);
y_matrix = y_matrix';
y_unrolled = y_matrix(:);
y_unrolled = y_unrolled';

a3_unrolled = a3(:);

Theta1_for_cost = Theta1(:, 2:size(Theta1,2));
Theta2_for_cost = Theta2(:, 2:size(Theta2,2));

Theta1_unrolled = Theta1_for_cost(:)';
Theta2_unrolled = Theta2_for_cost(:)';


J = (1/m)*(-y_unrolled*log(a3_unrolled)-(1-y_unrolled)*(log(1-a3_unrolled)))+...
    (lambda/(2*m))*(sum(Theta1_unrolled.^2) + ...
    sum(Theta2_unrolled.^2))


%
% Part 2: Implement the backpropagation algorithm to compute the gradients
%         Theta1_grad and Theta2_grad. You should return the partial derivatives of
%         the cost function with respect to Theta1 and Theta2 in Theta1_grad and
%         Theta2_grad, respectively. After implementing Part 2, you can check
%         that your implementation is correct by running checkNNGradients
%
%         Note: The vector y passed into the function is a vector of labels
%               containing values from 1..K. You need to map this vector into a 
%               binary vector of 1's and 0's to be used with the neural network
%               cost function.
%
%         Hint: We recommend implementing backpropagation using a for-loop
%               over the training examples if you are implementing it for the 
%               first time.


% 1. Siguiendo las instrucciones del documento, el primer paso en el algoritmo de 
% backpropagation es asignar los valores del último input a a1

grad_delta_2 = zeros(size(Theta2,1), size(Theta2, 2));
grad_delta_1 = zeros(size(Theta1,1), size(Theta1, 2));


for i=1:m

  a1 = X(:,i);
  
  z2 = Theta1*a1;
  a2 = [1; sigmoid(z2)];

  z3 = Theta2*a2;
  a3 = sigmoid(z3);

  y = y_matrix(:, i);

  % 2. Se calcula delta3

  delta3 = a3-y;
  
  % 3. Para la capa oculta

  delta2 = Theta2' * delta3;
  delta2 = delta2(2:end);
  delta2 = delta2 .* sigmoidGradient(z2);
  
  % 4.
  grad_delta_2 = grad_delta_2 + delta3*a2';
  grad_delta_1 = grad_delta_1 + delta2*a1';
  
  


endfor
% 5. Unregularised gradient

Theta2_grad = (1/m)*(grad_delta_2);
Theta1_grad = (1/m)*(grad_delta_1);


% Part 3: Implement regularization with the cost function and gradients.
%
%         Hint: You can implement this around the code for
%               backpropagation. That is, you can compute the gradients for
%               the regularization separately and then add them to Theta1_grad
%               and Theta2_grad from Part 2.
%

Theta2_grad = Theta2_grad + (lambda/m)*[zeros(size(Theta2,1),1)'; 
              Theta2(:,2:size(Theta2,2))']';
              
Theta1_grad = Theta1_grad + (lambda/m)*[zeros(size(Theta1,1),1)', 
              Theta1(:,2:size(Theta1,2))']';


% =========================================================================

% Unroll gradients
grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
