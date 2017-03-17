// Etape 1
// Convertion de l'image en matrice
path_name = 'D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\Gliese 581d V2.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Application d'un filtre median 
image_1 = filtre_median(img_in);

// Etape 4
// Application d'un filtre median
image_2 = filtre_median(image_1);

// Etape 5
// Création de l'histogramme cumulé
histo = HistogrammeCummule(image_2);

// Etape 6
// Egalisation de l'image (augmentation du contraste)
image_out = egalisation(image_2,histo);

// Etape 7
// Affichage de l'image finale
figure;
display_gray (image_out);

//Etape 9
// Enregistrer la matrice sous forme d'image
writepbm (image_out,"D:\Users\ADRIEN KEGLER\Documents\Visual Studio 2015\Projects\Exolife\Projet-Exolife\images\mission_X2_V2.pbm");
