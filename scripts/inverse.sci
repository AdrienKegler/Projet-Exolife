
function image_out=inverse(matrice)  
  
  
  SizeX = size(matrice,"r");
  SizeY = size(matrice,"c");
  image_out= zeros(SizeX,SizeY);
  

  for i = 1:SizeX,
      for j = 1:SizeY,
          if matrice(i,j) == 255 then
              image_out(i,j) = 0;
          else
              image_out(i,j) = 255;
          end,
      end;
  end;

endfunction
