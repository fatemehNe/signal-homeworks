%% question 2 part a
t = -10:1:50;
x = 0.5.^t;
s = sin(pi*t/4) + cos(pi*t/4);
y = x.*s;
figure(1);
stem(t,y);

%% part b
figure(2);
t = -10:1:50;
x = 1-exp(0.2*t);
u = heaviside(t-2);
u1 = heaviside(-t+1);
y = 3*u+x.*u1 ;
stem(t,y);