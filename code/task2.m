function new_X = task2 (photo, pcs)
  [m n] = size(photo);
  new_X = zeros(m, n);
  photo = double(photo);
  u = mean(photo, 2);
  for i = 1:m
    photo(i, :) = photo(i, :) - u(i);
  endfor
  Z = photo' / sqrt(n - 1);
  [U S V] = svd(Z);
  W = V(:, 1:pcs);
  Y = W' * photo;
  new_X = W * Y + u;
  new_X = uint8(new_X);
endfunction
