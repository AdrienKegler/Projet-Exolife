funcprot(0);
getd('C:\Users\clement\Documents\GitHub\Projet-Exolife\scripts\');

img = readpbm('C:\Users\clement\Documents\GitHub\Projet-Exolife\images\Jupiter1.pbm');
img2 = readpbm('C:\Users\clement\Documents\GitHub\Projet-Exolife\images\HD215497.pbm')


display_gray(img2);


seuilSegment(img2,120,180,230);
 

