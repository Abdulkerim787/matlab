%frequency modulation with matlab
close all;
clear all;
clc
%Set the parameters
fs=10000;
Ecmax=1;
Emmax=1;
fm=35;
fc=500;
B=10;
t=(0:.1*fs)/fs;
Emt=Emmax*cos(2*pi*fm*t);
subplot (4,1,1);
plot(t,Emt);
title('Message Signal');
Ect=Ecmax*cos(2*pi*fc*t); 
subplot(4,1,2);
plot(t,Ect);
title('Carrier Signal');
Efmt=Ecmax*cos((2*pi*fc*t)+B*sin(2*pi*fm*t)); 
subplot (4,1,3);
plot(t,Efmt);
title('Frequency Modulated Signal');

