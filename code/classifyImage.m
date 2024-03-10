function prediction = classifyImage (im, train_mat, train_val, pcs)
  prediction = -1;
  im = double(im);
  [train, miu, Y, Vk] = magic_with_pca(train_mat, pcs);
  im = im - miu;
  im = im * Vk;
  k = 5;
  prediction = KNN(train_val, Y, im, k);
endfunction
