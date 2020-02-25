function Ex4_passe_bas(img, r)

tf = fft2(img);
tf = fftshift(tf);
[m,n] = size(tf);
x = fix(m/2);
y = fix(n/2);
figure;
subplot(2,2,1);imshow(img);
subplot(2,2,2);imshow(log(tf),[]);
for i=1:m
    for j=1:n
        dist = sqrt((i-x)^2+(j-y)^2);
        if(dist >= r)
            tf(i,j)=0;
        end
    end
end
res=ifft2(tf);
subplot(2,2,3);imshow(res,[0,255]);
subplot(2,2,4);imshow(log(tf),[]);

