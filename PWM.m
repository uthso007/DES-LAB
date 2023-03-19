clc;
clear all;
close all;

fm=input('Enter the meassage signal frequency= ');
fc=input('Enter the carrier signal sawtooth frequency');
a=input('Enter the meassage signal amplitude');

t=0:0.001:1;
mt=a*sin(2*pi*fm*t);
ct=1.02*a*sawtooth(2*pi*fc*t);

for i=1:length(ct)
  if mt(i)>=ct(i)
    pwm(i)=a;
  else
    pwm(i)=0;
  end;
end;

subplot(311);
plot(t,mt);
title('Message signal');
xlabel('time');
ylabel('amplitude');

subplot(312);
plot(t,ct);
title('carrrier signal');

subplot(313);
plot(t,pwm);
title('Pulse width modulated signal');
axis([0 1 0 2 ]);

