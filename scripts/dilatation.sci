
function image_out=dilatation(matrice,structure,centre_x,centre_y)  
  
  
  SizeX = size(matrice,"r");
  SizeY = size(matrice,"c");
  image_out= zeros(SizeX,SizeY);
  
  SizeX_struct = size(structure,"r");
  SizeY_struct = size(structure,"c");
  
  for i = 1:SizeX,
      for j = 1:SizeY,
          if (matrice(i,j) == structure(centre_x,centre_y)) then
              for k = 1:3,
                  for l = 1 :3,
                      if structure(k,l) == 255 then
                      cor_X = ( i - centre_x) + k;
                      cor_Y = ( j - centre_y) + l;
                          if ~ (cor_X == 0 | cor_X == SizeX +1 | cor_Y == 0 | cor_Y == SizeY +1) then
                              image_out(cor_X,cor_Y)= 255; 
                          end,
                      end,
                  end;
              end;
          end,
      end;
  end;

endfunction
