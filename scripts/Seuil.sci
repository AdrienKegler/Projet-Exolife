function image= Seuil(matrice, N_Seuil)
//1ère étape - Load

img_in = matrice;
SizeX =  size(img_in, "r");
SizeY = size(img_in, "c");
image = zeros(SizeX, SizeY);

//Partie 2 - Loop



for i = 1:SizeX,
    for j = 1:SizeY,
        if img_in(i,j) >= N_Seuil-1 then 
            image(i,j)=255;
            else  image(i,j)=0;
        end,
    end;
end;

endfunction
