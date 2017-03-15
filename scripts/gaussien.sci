function image_out=flou_g(matrice)
    

SizeX = size(matrice,"r");
SizeY = size(matrice,"c");

// création d'un tableau de zeros
image_out = zeros(SizeX,SizeY);
// for chaque pixels 
for i = 1:SizeX,
    for j = 1:SizeY
        if i == 1 |i == 2| i == SizeX | i == SizeX-1 | j == 1 | j == 2 | j == SizeY-1 | j == SizeY then
            image_out(i,j) = matrice(i,j);
        else 
            image_out(i,j) = abs(round((matrice(i-2,j-2)+matrice(i-2,j-1)*2+matrice(i-2,j)*3+matrice(i-2,j+1)*2+matrice(i-2,j+2)+matrice(i-1,j-2)*2+matrice(i-1,j-1)*6+matrice(i-1,j)*8+matrice(i-1,j+1)*6+matrice(i-1,j+2)*2+matrice(i,j-2)*3+matrice(i,j-1)*8+matrice(i,j)*10+matrice(i,j+1)*8+matrice(i,j+2)*3+matrice(i+1,j-2)*2+matrice(i+1,j-1)*6+matrice(i+1,j)*8+matrice(i+1,j+1)*6+matrice(i+1,j+2)*2+matrice(i+2,j-2)+matrice(i+2,j-1)*2+matrice(i+2,j)*3+matrice(i+2,j+1)*2+matrice(i+2,j+2))/98));                
        end,
    end;        
end;


endfunction
