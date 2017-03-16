
function image_out=erosion(matrice,structure,centre_x,centre_y)  
  
  
  SizeX = size(matrice,"r");
  SizeY = size(matrice,"c");
  image_out= zeros(SizeX,SizeY);
  

  image1 = inverse(matrice);
  s_mirroir = reflection(structure,centre_x,centre_y);
  image2 = dilatation(image1,s_mirroir,centre_x,centre_y);
  image_out = inverse(image2);

endfunction
