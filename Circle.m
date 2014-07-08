function [ point_1, point_2, point_3 ] = Circle(  )
% Function to generate the positions of the patches via an underlying circle
% Sjoerd helped
% points on the circle are according to x*x+y*y=r*r
% x = a + r cos t
% y = b + r sin t
% M = (a|b)

% M (middle of the circle)
a=640;
b=480;

r=279; % subject to testing (in pixel)
t = unifrnd(0,2/3*pi,1,1); % angle from 0 to the left in radians (sample from the first third of radians)
t2 = t + 2/3*pi; % second angle
t3 = t + 4/3*pi; % third angle

% compute the fist position on the circle
x1 = a + r * cos(t);
y1 = b + r * sin(t);
point_1=[round(x1),round(y1)]

% compute the second position
x2 = a + r * cos(t2);
y2 = b + r * sin(t2);
point_2=[round(x2),round(y2)]

% compute the third position
x3 = a + r * cos(t3);
y3 = b + r * sin(t3);
point_3=[round(x3),round(y3)]


%plot(x1,y1,'-o',x2,y2,'-o',x3,y3,'-o',0,0,'-o')
%axis([-250 250 -250 250])
end
