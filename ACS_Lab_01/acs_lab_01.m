clear all
close all
clc

frcf = [1 0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1]';
brkdst = [50.861 50.930 57.592 64.715 74.220 87.609 107.676 ...
    140.825 205.608 387.445]';
brktm = [5.40 5.58 6.12 6.51 7.3 8.32 9.61 12.0 16.9 30.5]';
brktm = brktm - 1.95;
sf = [-0.074 -1 -1 -1 -1 -1 -1 -1 -1 -1]';
sr = [-0.062 -0.188 -1 -1 -1 -1 -1 -1 -1 -1]';

data1 = table(frcf,brkdst,brktm,sf,sr);

% frcf = [1 0.9 0.8 0.7 0.6 0.5 0.4 0.3 0.2 0.1]';
% brkdst = []';
% brktm = []';
% brktm = brktm - 1.95;
% sf = []';
% sr = []';
% 
% data2 = table(frcf,brkdst,brktm,sf,sr);

figure(1)
subplot(2,1,1)
plot(data1.frcf,data1.brkdst,'o-'), grid on, hold on
% plot(data2.frcf,data2.brkdst,'o-'),
xlabel('Friction coefficient');
ylabel('Breaking distance');
title('Breaking distance');
legend('Vehicle mass = 1650 kg','Vehicle mass = 1815 kg');

subplot(2,1,2)
plot(data1.frcf,data1.brktm,'o-'), grid on, hold on
% plot(data2.frcf,data2.brktm,'o-'),
xlabel('Friction coefficient');
ylabel('Breaking time');
title('Breaking time');
legend('Vehicle mass = 1650 kg','Vehicle mass = 1815 kg');