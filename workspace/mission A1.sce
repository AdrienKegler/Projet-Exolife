
//1ère étape - Load

path_name = "D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Encelade_Surface.pbm";

img_in = readpbm(path_name);
y = 0;
//Création de l'histogramme
histo = histogramme(img_in);

// Déterminance du niveau le plus élevé
L_max = max_histo(histo);


//Application du seuil
img_out = Seuil(img_in, L_max);
:
//Localisation du/des pixel(s) avec le plus haut niveau

Coord = zeros(histo(L_max), 2);

for i =1:size(img_out, "r");
    for j = 1:size(img_out, "c");
       if img_out(i,j) == 255 then
           y = y+1
            Coord(y,1)= i;
            Coord(y, 2)=j;
            end,
    end;
end;

disp(Coord);
    
//Step 3 - Show
display_gray(img_out);

//Etape N°4 - Save
writepbm(img_out, "D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\mission_A1.pbm");
 
