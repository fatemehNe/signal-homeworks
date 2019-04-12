p = im2double(imread('tree.png'));
bpout = p;
figure(1);
imshow(p);
bkernel=([[1,1,1];[1,1,1];[1,1,1]])/9; % box blur kernel
gkernel=([[1,2,1];[2,4,2];[1,2,1]])/16; % gaussian blur kernel
for x = drange(2:299)
    for y= drange(2:479)
        for c = drange(1:3) 
            center = gkernel(3,3)*p(x-1,y-1,c); 
            center = gkernel(3,2)*p(x-1,y,c) + center;
            center = gkernel(3,1)*p(x-1,y+1,c) + center;
            center = gkernel(2,3)*p(x,y-1,c) + center;
            center = gkernel(2,2)*p(x,y,c) + center;
            center = gkernel(2,1)*p(x,y+1,c) + center;
            center = gkernel(1,3)*p(x+1,y-1,c) + center;
            center = gkernel(1,2)*p(x+1,y,c) + center;
            center = gkernel(1,1)*p(x+1,y+1,c) + center;
            bpout(x,y,c) = center;
        end
    end
end

figure(2);
imshow(bpout);

for x = drange(2:299)
    for y= drange(2:479)
        for c = drange(1:3) 
            center = bkernel(3,3)*p(x-1,y-1,c); 
            center = bkernel(3,2)*p(x-1,y,c) + center;
            center = bkernel(3,1)*p(x-1,y+1,c) + center;
            center = bkernel(2,3)*p(x,y-1,c) + center;
            center = bkernel(2,2)*p(x,y,c) + center;
            center = bkernel(2,1)*p(x,y+1,c) + center;
            center = bkernel(1,3)*p(x+1,y-1,c) + center;
            center = bkernel(1,2)*p(x+1,y,c) + center;
            center = bkernel(1,1)*p(x+1,y+1,c) + center;
            gpout(x,y,c) = center;
        end
    end
end

figure(3);
imshow(gpout);