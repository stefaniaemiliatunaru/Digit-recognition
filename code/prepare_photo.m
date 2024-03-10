function sir = prepare_photo (im)
  sir = zeros (1, 784);
  im = 255 - im;
  im = im';
  sir = reshape(im, 1, []);
endfunction
