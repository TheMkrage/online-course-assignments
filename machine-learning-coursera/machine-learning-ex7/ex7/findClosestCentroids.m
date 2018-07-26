function idx = findClosestCentroids(X, centroids)
%FINDCLOSESTCENTROIDS computes the centroid memberships for every example
%   idx = FINDCLOSESTCENTROIDS (X, centroids) returns the closest centroids
%   in idx for a dataset X where each row is a single example. idx = m x 1 
%   vector of centroid assignments (i.e. each entry in range [1..K])
%
% Set K
K = size(centroids, 1);

% You need to return the following variables correctly.
idx = zeros(size(X,1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Go over every example, find its closest centroid, and store
%               the index inside idx at the appropriate location.
%               Concretely, idx(i) should contain the index of the centroid
%               closest to example i. Hence, it should be a value in the 
%               range 1..K
%
% Note: You can use a for-loop over the examples to compute this.
%

for training_example_index = 1:size(X,1)
  training_example = X(training_example_index, :);
  lowest_j = 100000;
  lowest_k = 1;
  for centroid_index = 1:K
    centroid = centroids(centroid_index, :);
    j = norm(training_example - centroid) ^ 2;
    if j < lowest_j
      lowest_k = centroid_index;
      lowest_j = j;
    end
  end
  idx(training_example_index) = lowest_k;
end






% =============================================================

end

