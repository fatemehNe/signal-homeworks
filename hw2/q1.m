a = [-3,4,7];
b = [4,3,2,1];
w = conv(a,b);
figure(1);
plot(w);

n = 0 : 1 : 100;
x = heaviside(n+2) - 3*heaviside(n-10);
h = 0.8 * ( heaviside(n-2) - 2* heaviside(n-3));

z = conv(x,h);
figure(2);
plot(z);