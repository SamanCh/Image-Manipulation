
clc
I = imread ('\C:\Users\Saman\Desktop\DIP\sam.jpeg');
b = rgb2gray(I);
[r , c , p] = size(I);
for x = 1:r
    for y =1:c
        if b(x,y)>=100
           d(x,y)=1;
        else
           d(x,y)=0;
        end
        h(x,y)= 255-b(x,y);
    end
end
t = b (1:r/2, 1 :c/2,:);
y = b (1:r/2, c/2+1, c,:);
u = b (r/2+1:r,1:c,:);


 subplot(3,3,4) , subiamge (d);
  subplot(3,3,5) , subiamge (h);
   subplot(3,3,2) , subiamge (t);
    subplot(3,3,3) , subiamge (y);
     subplot(3,3,6) , subiamge (u);
 
            