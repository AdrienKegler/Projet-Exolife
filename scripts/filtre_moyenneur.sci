//fonction de débruitage
function debruit=filtre_moyenneur(matrice)
// séléction d'une image
img_in = matrice;
// aquisition des lignes min et max
SizeX = size(matrice,"r");
// aquisition des colones min et max
SizeY = size(matrice,"c");

// création d'un tableau de zeros
debruit = zeros(SizeX,SizeY);
// for chaque pixels 
for i = 1:SizeX,
    for j = 1:SizeY
        if i == 1 | i == SizeX | j == 1 | j == SizeY then
            debruit(i,j) = matrice(i,j);
        else 
            debruit(i,j) = round((matrice(i-1,j-1)+matrice(i,j-1)+matrice(i+1,j-1)+matrice(i-1,j)+matrice(i,j)+matrice(i+1,j)+matrice(i-1,j+1)+matrice(i,j+1)+matrice(i+1,j+1))/9);                
        end,
    end;        
end;


endfunction

// si numéro de lignes et colones différents des valeurs min et max

// selectionner pixels en cours

//moyenner le tout.  
// pixels = k
// ligne = r
// colonne = c

// (k(c-1,r-1) + k(c,r-1) + k(c+1,r-1) + k(c-1,r) + k(c,r) + k(c+1,r) + k(c-1,r+1) + k(c,r+1) + k(c+1,r+1)) / 9

//appliquer la moyenne au pixel du second tableau

//fin 

