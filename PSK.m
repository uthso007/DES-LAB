clc;
clear all;
close all;

fm=input('Enter the frequency of the message signal= ');
fc=input('Enter the frequency of the carrier signal= ');
m=input('Enter the amplitude of the both message and carrier signal= ');
t=0:0.001:1;
mt=square(2*pi*fm*t);
ct=m.*sin(2*pi*fc*t); % change colon to semicolon here
psk=mt.*ct;
subplot(311);
plot(t,mt);
axis([0 1 0 1.05]);
title('Message signal');
xlabel('time');
ylabel('amplitude');

subplot(312);
plot(t,ct);
title('carrier signal');
xlabel('time');
ylabel('amplitude');

subplot(313);
plot(t,psk);
title('PSK signal');
xlabel('time');
ylabel('amplitude');

