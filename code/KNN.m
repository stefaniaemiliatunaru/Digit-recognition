function prediction = KNN (labels, Y, test, k)
  prediction = -1;
  [m, n] = size (Y);
  distance = zeros (m, 1);
  for i = 1:m
    distance(i) = norm(Y(i, :) - test, 2);
  endfor
  % Hint [~,aux] = sort (...)
  [~, id] = sort(distance, "ascend");
  k_nearest_labels = labels(id(1:k));
  prediction = median(k_nearest_labels);
 endfunction
