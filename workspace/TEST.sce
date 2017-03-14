
//1ère étape - Load

path_name = "D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Mars_Surface.pbm";
img_in = readpbm(path_name);

//Step 2 - Show
display_gray(img_in);

//Etape N°3 - Save
writepbm(img_in, 'D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Première Création.pbm');
