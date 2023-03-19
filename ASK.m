clc;
clear all;
close all;

a=input('Enter the message and carrier signal amplitude= ');
fm=input('Enter the message signal frequency= ');
fc=input('Enter the carrier signal frequency= ');
t=0:0.001:1;


mt=a/2.*square(2*pi*fm*t)+a/2;
ct=a*sin(2*pi*fc*t);
ask=mt.*ct;

subplot(311);
plot(t,mt,'red');
axis([0 1 0 a*1.05]);
title('Message signal');
xlabel('time');
ylabel('amplitude');

subplot(312);
plot(t,ct);
title('Carrier signal');
xlabel('time');
ylabel('amplitude');

subplot(313);
plot(t,ask,'blue');
title('ASK signal');
xlabel('time');
ylabel('amplitude');

