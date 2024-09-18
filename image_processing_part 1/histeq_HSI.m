function result = histeq_HSI(imagedata)
 imagedata = double(imagedata);
figure; imshow(uint8(imagedata));
    % Convert RGB image to HSI color model
    HSI = rgb2hsv(imagedata);

    % Split HSI channels
    H = HSI(:,:,1);
    S = HSI(:,:,2);
    
    
    I = HSI(:,:,3);

%     % Apply histogram equalization to the intensity component
     I_eq = imageisostathmish(I);
% 
%     % Stretch the saturation component
%     S_stretch = imadjust(S);

%     % Resize S_stretch and I_eq to the same size as H
%     S_stretch = imresize(S_stretch, size(H));
%     I_eq = imresize(I_eq, size(H));

    % Merge channels back into HSI image
    HSI_eq = cat(3, H, S, I_eq);

    % Convert back to RGB
    result = uint8(hsv2rgb(HSI_eq));

    % Display the equalized and stretched image
    figure; imshow(result);
end
