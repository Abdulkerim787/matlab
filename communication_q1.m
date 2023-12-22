clc;
close all;
clear all;
%modulating signal
m=1;
Emmax=10;   %amp of modulating signal
fm=1000;  %freq of modulating signal
Ta=1/fm;
t=0:Ta/555:3*Ta;
Emt=Emmax*sin(2*pi*fm*t);
figure(1)
subplot(3,1,1);
plot(t,Emt)
title('Modulating signal')

%carrier signal
Ecmax=Emmax/m;
fc=fm*10;
Tc=1/fc;
Ect=Ecmax*sin(2*pi*fc*t);
subplot(3,1,2)
plot(t,Ect)
grid on;
title ('carrier signal');

%AM modulation
Eamt=(Ecmax+Emmax*sin(2*pi*fm*t)).*sin(2*pi*fc*t);
subplot(3,1,3)
plot(t,Eamt)
title('Amplitude modulated signal')
grid on;


