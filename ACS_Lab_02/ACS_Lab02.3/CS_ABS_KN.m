clc; clear all; close all;
% The brake starts when the road friction is already splitted
% Design parameters

% KN ABS control: wheels acceleration thresholds
% The numerical values must be in rad/s^2 and such that a2<a1<0<a3<a4 
a2=-100; % Set very close to a1
a1=-80;
a3=[]; % Not used
a4=200;

% Longitudinal slip corresponding to maximum friction to set the Additional Constraint
% The numerical value must be positive!
SlMax=0.15; % def: 0.15
% Flag to activate (1) deactivate (0) the Additional Constraint
AdCo=0;

% Slope of the increasing braking pressure on each wheel [MPa/s]
% The numerical value must be positive!
SloIn=150;
% Slope of the REDUCED increasing braking pressure on each wheel [MPa/s]
% The numerical value must be positive but < SloIn !
SloInRed=100;
% Slope of the decreasing braking pressure on each wheel [MPa/s]
% The numerical value must be positive!
SloDe=50;

% Other parameters NOT to be changed
% Maximum braking pressure [MPa]
MBP=15;
% Mode and Slopes normalization
MoInRed=SloInRed/SloIn;
SloIn_=SloIn/MBP;
SloDe_=SloDe/MBP;
% Gain for rear braking pressures as in CarSim (<1)
RBP=0.4;
% Minimum speed below which the brake is always on as in CarSim  [km/h]
Vmin=3;
% Brake activation referred to Common Pressure minimum threshold to "tell" to ABS that the driver is braking
BrAct=0.1;

sim('CS_ABS_KN_S');

% Plots
tito=['FL - L1 - Snow'; 'FR - R1 - Asph'; 'RL - L2 - Snow'; 'RR - R2 - Asph'];

Te=WAcc.time;
WAccD=WAcc.signals.values;
PressD=Press.signals.values;
ModeD=Mode.signals.values;
ModeD_=Mode_.signals.values;
VelD=Vel.signals.values;

for in=1:4
figure(in)
plot(Te,WAccD(:,in),'k-',Te,100*ModeD(:,in),'r-',Te,10*PressD(:,in),'g-',...
    Te,VelD(:,in),'b-',Te,100*ModeD_(:,in),'r--',Te,10*PressD(:,5),'g--',Te,VelD(:,5),'b--',...
    [Te(1) Te(end)],[a1 a2 a4;a1 a2 a4],'k--'),
axis([0 Te(end) a2-20 a4+20]),
title(tito(in,:)),legend('WheelAcc','100*Mode','10*Press','WheelVel'),grid,zoom on
set(in,'Name',tito(in,:),'WindowStyle','docked');
as=gca; set(as,'FontWeight','bold','FontSize',12);
asX=get(as,'XLabel'); asY=get(as,'YLabel'); asT=get(as,'Title'); 
set([asX,asY,asT],'FontWeight','bold','FontSize',12);
ch=get(as,'children'); set(ch,'LineWidth',1);
end
