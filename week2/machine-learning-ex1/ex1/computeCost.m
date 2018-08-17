function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% 1. iteration example
%for i = 1:m,
%    h = theta(1) + theta(2)*X(i);
%    J = J + (h - y(i))^2;
%end;

% J = J/(2 * m);

% 2. Matrix multiplication example
J = sum((X * theta - y).^2)/(2 * m);

% =========================================================================

end
