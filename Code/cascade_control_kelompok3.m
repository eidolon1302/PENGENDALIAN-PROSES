%% ============================================================
% CASCADE CONTROL OF CONTINUOUS STIRRED TANK REACTOR (CSTR)
% Final Project - Process Control
%
% Based on Group P&ID
%
% Master Controller : TC-101
% Slave Controller  : FC-201
% Manipulated Variable : CV-201 (Coolant Valve)
% Controlled Variable  : Reactor Temperature (TT-101)
%
% =============================================================

clc;
clear;
close all;

%% =============================================================
% Laplace Variable
%% =============================================================

s = tf('s');

%% =============================================================
% PROCESS MODEL
%% =============================================================

%---------------------------------------------------------------
% Inner Loop
% Flow Coolant
% FC-201 -> CV-201
%---------------------------------------------------------------

G_flow = 1/(2*s+1);

%---------------------------------------------------------------
% Outer Loop
% Reactor Temperature
% TT-101
%---------------------------------------------------------------

G_temp = 0.8/(35*s+1);

%---------------------------------------------------------------
% Heat Disturbance
%---------------------------------------------------------------

G_dist = 0.6/(20*s+1);

%% =============================================================
% CONTROLLER DESIGN
%% =============================================================

%---------------------------------------------------------------
% Secondary Controller
% FC-201
%---------------------------------------------------------------

FC201 = pidtune(G_flow,'PI');

% Closed loop flow

InnerLoop = feedback(FC201*G_flow,1);

%---------------------------------------------------------------
% Primary Controller
% TC-101
%---------------------------------------------------------------

TC101 = pidtune(InnerLoop*G_temp,'PI');

%% =============================================================
% CASCADE CLOSED LOOP
%% =============================================================

Cascade = feedback(TC101*InnerLoop*G_temp,1);

%% =============================================================
% SINGLE LOOP CONTROLLER
%% =============================================================

PlantSingle = G_flow*G_temp;

SingleController = pidtune(PlantSingle,'PI');

SingleLoop = feedback(SingleController*PlantSingle,1);

%% =============================================================
% STEP RESPONSE
%% =============================================================

figure;

step(SingleLoop,Cascade,300)

grid on

title('Step Response Comparison')

xlabel('Time (seconds)')

ylabel('Normalized Reactor Temperature')

legend('Single Loop','Cascade Control','Location','best')

%% =============================================================
% DISTURBANCE RESPONSE
%% =============================================================

Lcascade = TC101*InnerLoop*G_temp;

Lsingle = SingleController*PlantSingle;

Ycascade = G_dist/(1+Lcascade);

Ysingle = G_dist/(1+Lsingle);

figure

step(Ysingle,Ycascade,300)

grid on

title('Disturbance Response')

xlabel('Time (seconds)')

ylabel('Temperature Deviation')

legend('Single Loop','Cascade Control','Location','best')

%% =============================================================
% PERFORMANCE ANALYSIS
%% =============================================================

disp(' ')
disp('===============================')
disp('SINGLE LOOP PERFORMANCE')
disp('===============================')

info_single = stepinfo(SingleLoop)

disp(' ')
disp('===============================')
disp('CASCADE PERFORMANCE')
disp('===============================')

info_cascade = stepinfo(Cascade)

%% =============================================================
% POLE ANALYSIS
%% =============================================================

disp(' ')
disp('===============================')
disp('SINGLE LOOP POLES')
disp('===============================')

pole_single = pole(SingleLoop)

disp(' ')
disp('===============================')
disp('CASCADE POLES')
disp('===============================')

pole_cascade = pole(Cascade)

%% =============================================================
% POLE ZERO MAP
%% =============================================================

figure

pzmap(Cascade)

grid on

title('Pole-Zero Map of Cascade Control')

%% =============================================================
% GAIN MARGIN & PHASE MARGIN
%% =============================================================

figure

margin(TC101*InnerLoop*G_temp)

grid on

title('Gain Margin and Phase Margin')

%% =============================================================
% CONTROLLER PARAMETERS
%% =============================================================

disp(' ')
disp('===============================')
disp('FLOW CONTROLLER (FC-201)')
disp('===============================')

FC201

disp(' ')
disp('===============================')
disp('TEMPERATURE CONTROLLER (TC-101)')
disp('===============================')

TC101

%% =============================================================
% END OF PROGRAM
%% =============================================================