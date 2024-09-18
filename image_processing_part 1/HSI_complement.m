function HSI_complement(imagedata)
imagedata = double(imagedata);
HSI=histeq_HSI(imagedata);
HSI=double(HSI);
 
    
    
    % Split HSI channels
    H = HSI(:,:,1);
    S = HSI(:,:,2);
    I = HSI(:,:,3);
    
    % Compute complements
    H_comp = 255 - H;
    S_comp = 255 - S;
    I_comp = 255 - I;
  

    hsi_comp=cat(3,H_comp,S_comp, I_comp);
    
   
   
    
    % Display images and their complements
    
     figure;  subplot(1,2,1); imshow(uint8(HSI));
     hold on; subplot(1,2,2); imshow(uint8(hsi_comp));
    
end
