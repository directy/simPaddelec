%% StartUp-Code for project PADDELEC
% 
%

fprintf('\n\n *** start: startup.m for model Paddelec Grampus *** \n\n');

%% Load parameter dataset for components
%% BATTERY
BAT = clsBattery;

%%
MotorECU = clsMotorECU;

%% DCDC-Motor
BLDC = clsBLDC;

%% Boat Hull
BoatHull = clsBoatHull;

%% Daten für Referenzmodell Felix

c_r = 0.003;% UWE 0,0027
A_s = 3.5; % UWE 2,6667
v_0 = 0.0; % m/s 
m_Boat = 231.6; % kg

%%
% load measurement data
 load('tsc_paddel4.mat')

 %%
% clear repository file from Data Inspector 
% https://de.mathworks.com/support/bugreports/1302441
% sdi.Repository.clearRepositoryFile
 
% start latest model
uiopen('Modell_PADDELEC_RB_V4.slx',1)

fprintf('\n\n *** finished: startup.m *** \n\n');



