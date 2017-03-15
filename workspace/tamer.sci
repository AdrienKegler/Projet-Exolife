funcprot(0);
getd('C:\Users\clement\Documents\GitHub\Projet-Exolife\scripts\');

img = readpbm('C:\Users\clement\Documents\GitHub\Projet-Exolife\images\Jupiter1.pbm');
img2 = readpbm('C:\Users\clement\Documents\GitHub\Projet-Exolife\images\Europa_surface.pbm')

//display_gray(img);

//debruit = debruitage(img);

//figure;
//display_gray(debruit);

//essai2 = debruitage(debruit);

//figure;
//display_gray(essai2);


addition(img,img2);
