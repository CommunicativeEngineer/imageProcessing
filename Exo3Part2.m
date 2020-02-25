real = mag.*cos(phase);
imaginary = mag.*sin(phase);
newfft = (real + 1i .*imaginary);
im = abs(ifft2(fftshift(newfft)));
imshow(round(im)/255);

% a partir de la transormee on extraie la partie relle et la partie
% imaginaire du nombre complexe. Ceci permet d'ecrire le nombre sous la
% forme a+ib afin de pouvoir effectuer la transformee inverse. on affiche
% la transformee inverse et nous remarquons qu elle est identique a
% l'originale.