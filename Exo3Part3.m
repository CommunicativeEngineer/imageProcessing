img = imread('lena_gray.tif');
tf = fft2(img);
%tf = fftshift(tf);
res=ifft2(tf);
figure;
subplot(2,2,1);imshow(img);
subplot(2,2,3);imshow(res,[0,255]);
