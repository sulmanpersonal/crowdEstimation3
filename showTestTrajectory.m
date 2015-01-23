clear;
close all;
clc;
load('CONST_DATA.mat');
load('VAR_DATA.mat');
Path = 'C:\Users\sulman.baig\Documents\DATA\1-50';
idNumber = 88;
% %dataPath% = Path to where Data files are present
dataPath = strcat(Path,'\');
% %dataFiles% = get name of all files in given %dataPath%
dataFiles = dir(strcat(dataPath,'*.dat'));
% %importFileData% = import data of first file
[TimeStamp,IDx,Xi,Yi] = importFileData(strcat(dataPath,dataFiles(450).name));
% %Zones% gets zones for all Xi and Yi values
Zones = zoneAllXY(Xi, Yi, ZONE);
[times,GammaP,GammaN,logAnsGamma] = testTrajectory(Path, 450, idNumber);

index = find(IDx == idNumber);
% %zoneId% = zones trajectory for a particular id
zoneId = Zones(index);
% %changeZoneId% = zones without repetition of specific trajectory
% %indexChangeZone% = value of timestamp depending upon the x index number
[changeZoneId, ~] = unique(zoneId,'stable');
x = Xi(index);
y = Yi(index);
% %result% showing the positive percentages of emotions
result(:,1) = changeZoneId(:,1);
result(:,2) = logAnsGamma(:,1);
result(:,3) = GammaN./(GammaP+GammaN);
result(:,4) = result(:,2)+result(:,3);
result(:,5) = GammaP(:,1);
result(:,6) = GammaN(:,1);
% showMap();
% hold on;
% plot(x,y);
% hold off;