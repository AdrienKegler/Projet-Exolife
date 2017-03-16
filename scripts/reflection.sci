
function image_out=reflection(matrice,centre_x,centre_y)  
  
  
  SizeX = size(matrice,"r");
  SizeY = size(matrice,"c");
  image_out= zeros(SizeX,SizeY);
  

  for i = 1:SizeX,
      for j = 1:SizeY,
          if matrice(i,j) == 255 then
              cor_x= i - centre_x;
              cor_y= j - centre_y;
              image_out(i+(cor_x*(-2)),j+(cor_y*(-2))) = 255;
          end,
      end;
  end;

endfunction
