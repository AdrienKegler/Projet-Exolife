// Convertion de l'image en matrice
path_name = 'C:\Users\Aurélia\Documents\GitHub\Projet-Exolife\images\Mars_surface.pbm';
img_in = readpbm (path_name);

// Etape 2
// Affichage de l'image de base
display_gray(img_in);

// Etape 3
// Création et afffichage de l'histogramme 
histo = histogramme(img_in);

// Etape 4 
// Calcul du taux de gaz
somme_valeur = 0;
nb_valeur = 0;
for i = 1:256,
    somme_valeur = somme_valeur + (histo(i)*((i-1)/(2.55*100)));
    nb_valeur = nb_valeur + histo(i);
end;

taux = round((somme_valeur/nb_valeur)*100);
disp(taux);
