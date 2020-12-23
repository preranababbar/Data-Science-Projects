function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%


%size(theta)
%size(X)
%size(y)
%theta
%theta(2:end)
%X=[ones(m,1) X]
%X
%lambda*(theta(2:end,:));
%J = (sum((X*theta-y).^2)+lambda*sum(theta(2:end).^2))/(2*m);
%P1 = (X*theta-y)
%X
%grad1 = X'*P1/m
%grad1(2:end,:)
%grad1(1,:)
%theta
%theta(2:end,:)
%theta
%P2=lambda*theta(2:end)
%h = X*theta
%theta_reg = [0;theta(2:end, :);];
%grad2 = (grad1(2:end)+P2')/m
%grad1 = ((grad1(1))+(lambda*theta(1)))/m;
%grad = [grad1 grad2]
%J = (1/(2*m)) * sum((h - y).^2) + (lambda/(2*m)) * (theta_reg' * theta_reg);
%grad=grad1;
%grad = (1/m) * X' * (h - y) + (lambda/m) * theta_reg;


%grad1 = sum(X.*P1/m)
%P2=lambda*theta(2:end)
%grad2 = (grad1(2:end)+P2')/m
%grad = [grad1 grad2]

%h = X * theta;
%theta_reg = [0;theta(2:end, :);];
%J = (1/(2*m)) * sum((h - y).^2) + (lambda/(2*m)) * (theta_reg' * theta_reg);
%grad = (1/m) * X' * (h - y) + (lambda/m) * theta_reg;

%z = X' * sum(X*theta-y)/m


h = X * theta;
theta_reg = [0;theta(2:end, :);];
J = (1/(2*m)) * sum((h - y).^2) + (lambda/(2*m)) * (theta_reg' * theta_reg);
grad = (1/m) * X' * (h - y) + (lambda/m) * theta_reg;


%z =  (X'*(X*theta-y))/m;
%z2 = z(2:end)+lambda*(theta(2:end,:));
%grad = [z(1,:);z2];











% =========================================================================

grad = grad(:);

end
