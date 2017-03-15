
//1ère étape - Load

path_name = "..\images\Mars_Surface.pbm";
img_in = readpbm(path_name);

//Step 2 - Show
display_gray(img_in);

//Etape N°3 - Save
writepbm(img_in, '..\images\Première Création.pbm');
