clc 
clear
close all
fn=10000;
fm=1000;
fs=25;
t0=1/fn;
tf=2000/fm;
ts=1/fs;
t=t0:ts:tf;
f=2;
x=5*cos(3*pi*f*t+2);
y=conv(x,x,'same')*ts;

subplot(221)
plot(t,x,'b','linewidth',1)
grid on
title('func(x)')
xlabel('time')
ylabel('x(t)')
ylim([-8,8])

subplot(222)
stem(t,x,'r')
grid on
title('stem(x)')
xlabel('time')
ylabel('x(t)')
ylim([-8,8])

subplot(223)
plot(t,y,'k','linewidth',2.5)
grid on
title('conv')
xlabel('x')
ylabel('y(x)')
ylim([-25,25])

subplot(224)
plot(xcorr(x,x),'g','linewidth',2)
grid on
title("corr")
xlabel('x')
ylabel('corr(x,x)')
ylim([-700,700])
