%a) 
z=[0,0,0,0,0,1,0,0,0,0,0,1,0,0,0,0,0,1,0,0,0];

subplot (2,2,1);
stem(0:20,z);
subplot (2,2,2);
stem(-5:15,z);
%b)
t=[10,1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,9,10]
stem(0:20,t)
%c) 
n=[-15,25];
y=(pi/17 * n);
x=sin(y);
stem(x);
n=[0,50];
y=(pi/17 * n);
x=sin(y);
stem(x);