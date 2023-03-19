clc;
clear all;
close all;

m=input('Enter the amplitude of the message and carrier signal= ');
f1=input('Enter the frequency of the first carrier wave= ');
f2=input('Enter the frequency of the second carrier wave= ');
fm=input('Enter the frequency of the binary message signal= ');
t=0:0.001:1;

ct1=m*sin(2*pi*f1*t);
ct2=m*sin(2*pi*f2*t);
mt=m/2.*square(2*pi*fm*t)+m/2;

for i=0:1000
  if mt(i+1)==0
    psk(i+1)=ct2(i+1);
  else
    psk(i+1)=ct1(i+1);
  end;
end;


subplot(411);
plot(t,ct1);
title('First carrier wave');
xlabel('Time');
ylabel('Amplitude');


subplot(412);
plot(t,ct2);
title('second carrier wave');
xlabel('Time');
ylabel('Amplitude');


subplot(413);
plot(t,mt);
axis([0 1 0 1.05*m]);
title('Binary message signal');
xlabel('Time');
ylabel('Amplitude');


subplot(414);
plot(t,psk);
title('FSK signal');
xlabel('Time');
ylabel('Amplitude');


