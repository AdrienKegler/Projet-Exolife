// Etape 1
// Convertion de l'image en matrice
path_name = 'C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\Gliese 667Cc_surface.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Création et afffichage de l'histogramme 
histo = HistogrammeCummule(img_in);

// Etape 4
// Egalisation de l'image (augmentation du contraste)
image_out = egalisation(img_in,histo);

// Etape 5
// Affichage de l'image finale
figure;
display_gray (image_out);

// Etape 6
// Création et affichage de l'histogramme de l'image finale
HistogrammeCummule(image_out);


//Etape 9
// Enregistrer la matrice sous forme d'image
writepbm (img_in,"C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\mission_B1.pbm");
