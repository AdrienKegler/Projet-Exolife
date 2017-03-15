function image_out=flou_median(matrice)
    

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
            matrice_median = [matrice(i,j),matrice(i-1,j-1),matrice(i-1,j),matrice(i-1,j+1),matrice(i,j-1),matrice(i,j-+1),matrice(i+1,j-1),matrice(i+1,j)+matrice(i+1,j+1)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5);            
        end,
    end;        
end;


endfunction
