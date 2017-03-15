function image_out=ConvolutionX_derivee(matrice)
    

SizeX = size(matrice,"r");
SizeY = size(matrice,"c");

// création d'un tableau de zeros
image_out = zeros(SizeX,SizeY);
// for chaque pixels 
for i = 1:SizeX,
    for j = 1:SizeY
        if i == 1 | i == SizeX | j == 1 | j == SizeY then
            image_out(i,j) = matrice(i,j);
        else 
            image_out(i,j) = abs(round((matrice(i-1,j)*(-1)+matrice(i+1,j))*0.5));                
        end,
    end;        
end;


endfunction


