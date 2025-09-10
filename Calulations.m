% Nathan Blanchard
% Analog Synth Calculations
clear
clc
%% Signal Generator
% Input resistance
frequency = 1000:10:20000;
resistance = 250*10^6 ./ frequency;

figure
semilogx(frequency, resistance)
title('Input Resistance for Audible Frequencies'), xlabel('Frequency (Hz)'), ylabel('Resistance ({\Omega})')

%% Schmitt Trigger Oscillator Frequency
capacitance = 33 * 10^-9 %% Set capacticance here
frequency = [1000 20000]; %% Frequency range as a 1x2 matrix

Resistor = 1 ./ (4 .* capacitance .* frequency)
resistanceDifferential = Resistor(1) - Resistor(2)
