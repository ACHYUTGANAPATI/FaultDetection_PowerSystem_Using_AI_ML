clear;
A=1;
Fsampling=4000;
fX=50;
fY=150;
fZ=250;
t=0:1/Fsampling:2;
X=A*sin(2*pi*fX*t);
Y=A*sin(2*pi*fY*t);
Z=A*sin(2*pi*fZ*t);
figure();
%ploating waves;
fx = (0:length(X)-1)*(Fsampling/length(X));
fy = (0:length(Y)-1)*(Fsampling/length(Y));
fz = (0:length(Z)-1)*(Fsampling/length(Z));

%finding fourier Transform of signal X of 50hz
XfourierTransform=abs(fft(X));
%imaginary parts should not be ignored


%finding fourier Transform of signal Y of 150 hz
YfourierTransform=abs(fft(Y));


%finding fourier Transform of signal Z 250hz
ZfourierTransform=abs(fft(Z));
%imaginary parts should not be ignored

plot(fx,XfourierTransform);
hold on;
plot(fy,YfourierTransform);
plot(fz,ZfourierTransform);
legend('Xfourier transform 50hz','Yfouriertransform 150hz','Zfouriertransform 250hz');
xlabel("friquency(Hz)");
ylabel('Amplitude');
hold off;

figure(2);
finalWave=X+Z+Y;
fxyz = (0:length(finalWave)-1)*(Fsampling/length(finalWave));
fourierfinalWave=abs(fft(X+Z+Y));
plot(fxyz,fourierfinalWave);

