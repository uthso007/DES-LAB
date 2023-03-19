clc;
clear all;
close all;

fm=input('Enter the frequency of the message signal= ');
fc=input('Enter the frequency of the carrier signal= ');
t=input('Enter the time interval= ');

tt=linspace(0,t,1000);
m=2*cos(2*pi*fm*tt);
c=0.5*square(2*pi*fc*tt)+0.5;
pam=m.*c;

subplot(311);
plot(tt,m);
title('mesage signal');
xlabel('time');
ylabel('amplitude');


subplot(312);
plot(tt,c);
title('carrier/pulse signal');
xlabel('time');
ylabel('amplitude');


subplot(313);
plot(tt,pam);
title('PAM signal');
xlabel('time');
ylabel('amplitude');
