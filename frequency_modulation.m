clc;
clear all;
close all;

am=input('Enter the messeage signal amplitude= ');
ac=input('Enter the carrier signal amplitude= ');
fm=input('Enter the message signal frequency= ');
fc=input('Enter the carrier signal frequency= ');
t=input('Enter the time period= ');
m=input('Enter the modulation factor= ');

tt=linspace(0,t,1000);
y1=am*cos(2*pi*fm*tt);
y2=ac*cos(2*pi*fc*tt);
modu=ac*cos(2*pi*fc*tt+m*sin(2*pi*fm*tt));

 %if we use sin for the message and carrier singnal then the modu signal will be modu=ac*sin(2*pi*fc*tt-m*cos(2*pi*fm*tt))

subplot(311);
plot(tt,y1);

subplot(312);
plot(tt,y2);

subplot(313);
plot(tt,modu);
