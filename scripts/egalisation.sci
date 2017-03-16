
function image_out=egalisation(matrice,hist_cum)  
  SizeX = size(matrice,"r");
  SizeY = size(matrice,"c");
  nb_pixel = SizeX*SizeY;
  disp (nb_pixel);
  coef = nb_pixel/255;
  disp(coef);
  table = zeros(1,256);
  
  for i = 1:256,
     table(i)= round(hist_cum(i)/coef);
  end
  disp(table);
  

  image_out= zeros(SizeX,SizeY);
  
  for i = 1:SizeX,
      for j = 1:SizeY,
          pixel_value = matrice(i,j);
          image_out(i,j)= table(pixel_value+1);
      end;
  end;
  
  display_gray(image_out);
endfunction
