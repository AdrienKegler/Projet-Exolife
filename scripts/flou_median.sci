function image_out=flou_median(matrice)
    

SizeX = size(matrice,1);
SizeY = size(matrice,2);

// création d'un tableau de zeros
image_out = zeros(SizeX,SizeY);
// for chaque pixels 
for i = 1:SizeX,
    for j = 1:SizeY
       if i == 1 & j == 1 then
            matrice_median = [matrice(i,j),matrice(i,j),matrice(i,j),matrice(i,j), matrice(i,j+1), matrice(i,j+1) , matrice(i+1,j+1) , matrice(i+1,j), matrice(i+1,j)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5); 
            
        elseif i == 1 & j == SizeY then
            matrice_median = [matrice(i,j),matrice(i,j),matrice(i,j),matrice(i,j) ,matrice(i,j-1), matrice(i,j-1) , matrice(i+1,j-1) , matrice(i+1,j), matrice(i+1,j)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5);
             
             
        elseif i == SizeX & j == SizeY then
            matrice_median = [matrice(i,j),matrice(i,j),matrice(i,j),matrice(i,j), matrice(i,j-1), matrice(i,j-1) , matrice(i-1,j-1) , matrice(i-1,j), matrice(i-1,j)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5); 
            
            
        elseif i == SizeX & j == 1 then
            matrice_median = [matrice(i,j),matrice(i,j),matrice(i,j),matrice(i,j) , matrice(i,j+1), matrice(i,j+1) , matrice(i-1,j+1) , matrice(i-1,j), matrice(i-1,j)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5); 
            
            
        elseif (i == 1 & j<>1) |( i==1 & j <> SizeY) then
            matrice_median = [matrice(i,j),matrice(i,j) , matrice(i,j-1),matrice(i,j-1) , matrice(i,j+1),matrice(i,j+1) , matrice(i+1,j-1) , matrice(i+1,j), matrice(i+1,j+1)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5);  
            
            
        elseif (j == 1 & i<>1) |( j == 1 & i <> SizeX) then
            matrice_median = [matrice(i,j),matrice(i,j) , matrice(i-1,j), matrice(i-1,j), , matrice(i+1,j),matrice(i+1,j), matrice(i+1,j+1),matrice(i,j+1),matrice(i-1,j+1)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5); 
            
            
        elseif (j == SizeY & i<>1) | ( j == SizeY & i <> SizeX) then
            matrice_median = [matrice(i,j),matrice(i,j) , matrice(i-1,j), matrice(i-1,j), , matrice(i+1,j),matrice(i+1,j), matrice(i+1,j-1),matrice(i,j-1),matrice(i-1,j-1)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5); 
            
            
         elseif (i == SizeX & j<>1) |( i== SizeY & j <> SizeY) then
            matrice_median = [matrice(i,j),matrice(i,j) , matrice(i,j-1), matrice(i,j-1) , matrice(i,j+1), matrice(i,j+1) , matrice(i-1,j-1) , matrice(i-1,j), matrice(i-1,j+1)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5);  
            disp('i');
        else 
            matrice_median = [matrice(i,j) , matrice(i-1,j-1) , matrice(i-1,j) , matrice(i-1,j+1) , matrice(i,j-1) , matrice(i,j+1) , matrice(i+1,j-1) , matrice(i+1,j), matrice(i+1,j+1)];
            matrice_trie = gsort(matrice_median,'g','i');
            image_out(i,j)= matrice_trie(5);   
            //disp('e');         
        end,
    end;        
end;


endfunction
