function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

  % ====================== YOUR CODE HERE ======================
  % Instructions: Perform a single gradient step on the parameter vector
  %               theta. 
  %
  % Hint: While debugging, it can be useful to print out the values
  %       of the cost function (computeCost) and gradient here.
  %
  temp_thetas = zeros(length(theta), 1);
  hyp = X * theta;
  for theta_index = 1:length(theta)
    current_feature = X(:, theta_index);
    derivate_with_respect_to_theta_index = (1/m) * sum((hyp - y) .* current_feature);
    temp_thetas(theta_index, 1) = theta(theta_index, 1) - (alpha * derivate_with_respect_to_theta_index);
  end
  theta = temp_thetas;
  
  % ============================================================

  % Save the cost J in every iteration    
  J_history(iter) = computeCost(X, y, theta);

end

end
