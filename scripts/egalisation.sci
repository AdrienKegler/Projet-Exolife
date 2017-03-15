function image= egalisation(matrice)
    
//chargement de l'image
    img_in = matrice;
    
    SizeX = size(matrice,"r");
    SizeY = size(matrice,"c");

//ecriture de l'histogramme
     histo = zeros(1,256);
  
    for i = 1:SizeX,
         for j = 1:SizeY
             pixel_value = matrice(i,j);
             histo(pixel_value+1)= histo(pixel_value+1)+1;
         end
    end
    figure;
    plot(histo);
    
endfunction
