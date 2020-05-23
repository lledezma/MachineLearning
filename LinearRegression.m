clc, clear all, close all;
% x = [12.29 13.29 14.29 15.29 16.29 17.29 18.29 19.29];
% y = [18.32 23.32 27.32 32.32 38.32 45.32 47.32 52.32];
% 
% n =8;
% 
% sigX = sum(x);          %sum of all x values (sigma X)
% sigY = sum(y);          %sum of all y values (sigma y)
% sigXY = sum(x.*y);      %sum of all x*y values (sigma X*Y)
% sigX2 = sum(x.^2);      %sum of all x^2 values (sigma X^2)
% sigY2 = sum(y.^2);      %sum of all y^2 values (sigma Y^2)

% b = ( (sigY)*(sigX2) - (sigX)*(sigXY)) / (n*(sigX2) - (sigX)^2);
% m = ( n*(sigXY) - (sigX)*(sigY) ) / (n*(sigX2) - (sigX)^2);
% R2 = ((n*(sigXY) - (sigX)*(sigY))^2) / ((n*(sigX2) - (sigX)^2)*(n*(sigY2) - (sigY)^2));

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Q1-B
% yFunc = m*x + b;
% scatter(x,y);
% hold on
% plot(x,yFunc);
% xlabel('Advertising Spend (thousands of dollars');
% ylabel('Total sales (thousands of dollars');
% title('Linear relationship between amount spent and total monthly sales');
% grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Q1-C
% c = polyfit(x,y,1); 
% xpred = 12.29:.01:21;        
% y1 = polyval(c,xpred,'extrap');
% plot(x,y,'o',xpred,y1);
% hold on
% xlabel('Advertising Spend (thousands of dollars');
% ylabel('Total sales (thousands of dollars');
% title('Linear relationship between amount spent and total monthly sales (with prediction)');
% grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%   Q1-D

x = [12.29 13.29 14.29 15.29 16.29 17.29 18.29 19.29 15.00];
y = [18.32 23.32 27.32 32.32 38.32 45.32 47.32 52.32 3.00];

n =9;

sigX = sum(x);          %sum of all x values (sigma X)
sigY = sum(y);          %sum of all y values (sigma y)
sigXY = sum(x.*y);      %sum of all x*y values (sigma X*Y)
sigX2 = sum(x.^2);      %sum of all x^2 values (sigma X^2)
sigY2 = sum(y.^2);      %sum of all y^2 values (sigma Y^2)

b = ( (sigY)*(sigX2) - (sigX)*(sigXY)) / (n*(sigX2) - (sigX)^2);
m = ( n*(sigXY) - (sigX)*(sigY) ) / (n*(sigX2) - (sigX)^2);
R2 = ((n*(sigXY) - (sigX)*(sigY))^2) / ((n*(sigX2) - (sigX)^2)*(n*(sigY2) - (sigY)^2));

yFunc = m*x + b;
scatter(x,y);
hold on
plot(x,yFunc);
xlabel('Advertising Spend (thousands of dollars');
ylabel('Total sales (thousands of dollars');
title('Linear relationship between amount spent and total monthly sales');
grid on












