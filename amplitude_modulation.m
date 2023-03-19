clc all;
clear all;
close all;

am=input('Enter the message signal amplitude= ');
ac=input('Enter the carrier signal amplitude= ');
fm=input('Enter the message signal frequency= ');
fc=input('Enter the carrier signal frequency= ');
t=input('Enter the time interval= ');
m=input('Enter the modulation factor= ');

tt=linspace(0,t,1000);
y1=am*cos(2*pi*fm*tt);
y2=ac*cos(2*pi*fc*tt);
modu=ac*cos(2*pi*fc*tt) + ((m*ac)/2*cos(2*pi*fc*tt+2*pi*fm*tt))+ ((m*ac)/2*cos(2*pi*fc*tt-2*pi*fm*tt));

subplot(3,1,1);
plot(tt,y1);
xlabel('time');
ylabel('amplitude');
title('message signal');

subplot(3,1,2);
plot(tt,y2);
xlabel('time');
ylabel('amplitude');
title('carrier signal');

subplot(3,1,3);
plot(tt,modu);
xlabel('time');
ylabel('amplitude');
title('modulated wave ');
