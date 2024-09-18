function y1 = image_value_range(imagedata,dmin,dmax)
   %image before
   figure; subplot(1,2,1); imshow(uint8(imagedata))
   
   %grammikos metasxhmatismos
   imin = min(imagedata(:));
   imax = max(imagedata(:));
   [imin imax] 
   
   w1=(dmax-dmin)/(imax-imin);
   w2=dmin-w1*imin;
   nim=w1*imagedata+w2;
   nim=round(nim);
   hold on; subplot(1,2,2); imshow(uint8(nim))
   
   

end


