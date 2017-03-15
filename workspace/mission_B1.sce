// Etape 1
// Convertion de l'image en matrice
path_name = 'C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\Gliese 667Cc_surface.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Création et afffichage de l'histogramme 
histo = histogramme(img_in);

// Etape 4 
// Calcul du min et du max de l'histogramme
n_max = max_histo(histo);
n_min = min_histo(histo);

// Etape 5
// Normalisation de l'image (augmentation du contraste)
image_out = normalisation(img_in,n_min,n_max);

// Etape 6
// Affichage de l'image finale
figure;
display_gray (image_out);

// Etape 7 
// Création et affichage de l'histogramme de l'image finale
histogramme(image_out);

//Etape 8 
// Enregistrer la matrice sous forme d'image
writepbm (img_in,"C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\mission_B1.pbm");
