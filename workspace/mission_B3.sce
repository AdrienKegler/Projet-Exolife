// Etape 1
// Convertion de l'image en matrice
path_name = 'D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\HD215497.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Convolution avec filtre de sobel

image_out = seuilSegment(img_in,64,128,192);

// Etape 4
// Affichage de l'image finale
figure;
display_gray (image_out);

//Etape 5
// Enregistrer la matrice sous forme d'image
writepbm (image_out,"D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\mission_B3.pbm");
