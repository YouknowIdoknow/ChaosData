clc; clear; close all
%%
% % Waveguide 1
% load Bifur_SI_da(1-5)_Dw=0_P=1.5_gth=8770.mat
% load Bifur_SI_da(1-5)_Dw=0_P=2.5_gth=8770.mat
load Bifur_SI_da(1-5)_Dw=0.1_P=1.5_gth=8770.mat
%%
% % waveguide 2
% load Bifur_SI_da(1-5)_Dw=0_P=1.5_gth=9061.mat
% load Bifur_SI_da(1-5)_Dw=0_P=2.5_gth=9061.mat
% load Bifur_SI_da(1-5)_Dw=0.1_P=1.5_gth=9061.mat
% % waveguide 4
% load Bifur_SI_da(1-5)_Dw=0_P=1.5_gth=10795.mat
% load Bifur_SI_da(1-5)_Dw=0_P=2.5_gth=10795.mat
% load Bifur_SI_da(1-5)_Dw=0.1_P=1.5_gth=10795.mat
%%
figure
yyaxis left
hold on
plot(W1, U1, 'r.')
plot(W2, U2, 'g.')
plot(W3, U3, 'b.')
plot(W4, U4, 'k.')
ylabel('Extrema of amplitude')
yyaxis right
plot(Para, SI, 'm^')
ylim([-0.1 1.1])
box on
xlabel('d/a')
ylabel('SI')