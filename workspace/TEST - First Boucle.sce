
//1ère étape - Load

path_name = "D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Europa_surface.pbm";
img_in = readpbm(path_name);

img_out = Seuil(img_in, 252);

//Step 3 - Show
display_gray(img_out);

//Etape N°2 - Save
writepbm(img_out, 'D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Deuxième Création.pbm');
 