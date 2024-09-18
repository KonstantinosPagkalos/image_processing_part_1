function  result=rgb_histeq(imagedata)
    imagedata = double(imagedata);
    size(imagedata);
 figure; imshow(uint8(imagedata));


    % Split RGB channels
    R = imagedata(:,:,1);
    G = imagedata(:,:,2);
    B = imagedata(:,:,3);
    
 
   % Apply histogram equalization to each channel
    R_eq = imageisostathmish(R);
    G_eq = imageisostathmish(G);
    B_eq = imageisostathmish(B);

   % Merge channels back into RGB image
    result(:,:,1) = R_eq; 
    result(:,:,2) = G_eq;
    result(:,:,3) = B_eq;
    
    
  
    figure; imshow(uint8(result));
 
    
    
end