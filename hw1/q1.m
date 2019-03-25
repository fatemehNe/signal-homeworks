%% question 1 part a
t = -1:0.001:10;
x = 2*exp(-3*t);
u = heaviside(t);
y = x.*u;
figure(1);
plot(t,y);
axis tight;

%% part b
figure(2);
t = -1:0.001:10;
x = exp(-2*t);
s= sin(3*t-1);
u = heaviside(t);
y = s.*x.*u;
plot(t,y);
axis tight;

%% part c
figure(3);
t = -1:0.001:10;
x = exp(-1*t);
s= 4*cos(2*t-2);
u = heaviside(t);
y = x.*u + s;
plot(t,y);
axis tight;

%% part d
figure(4);
t1 = 0:0.001:10;
t2 = -1:0.001:0;
x1 = exp(-3*t1) -  exp(-6*t1);
x2 = 0*t2;
t = [t2 t1];
x = [x2 x1];
plot(t,x);

axis tight;


