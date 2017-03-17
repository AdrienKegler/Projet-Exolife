
function image_out=normalisation(matrice,n_min,n_max)  
  
  
  SizeX = size(matrice,"r");
  SizeY = size(matrice,"c");
  image_out= zeros(SizeX,SizeY);
  
  for i = 1:SizeX,
      for j = 1:SizeY,
          pixel_value = matrice(i,j);
          image_out(i,j)= ((pixel_value-n_min)*255)/(n_max-n_min);
      end;
  end;

endfunction

