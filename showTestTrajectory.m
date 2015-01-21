load('CONST_DATA.mat');
load('VAR_DATA.mat');
Path = 'C:\Users\sulman.baig\Documents\DATA\1-50';
idNumber = 97;
% %dataPath% = Path to where Data files are present
dataPath = strcat(Path,'\');
% %dataFiles% = get name of all files in given %dataPath%
dataFiles = dir(strcat(dataPath,'*.dat'));
% %importFileData% = import data of first file
[TimeStamp,IDx,Xi,Yi] = importFileData(strcat(dataPath,dataFiles(1).name));
% %Zones% gets zones for all Xi and Yi values
Zones = zoneAllXY(Xi, Yi, ZONE);
[~,~,logAnsGamma] = testTrajectory(Path, 1, idNumber);

index = find(IDx == idNumber);
% %zoneId% = zones trajectory for a particular id
zoneId = Zones(index);
% %changeZoneId% = zones without repetition of specific trajectory
% %indexChangeZone% = value of timestamp depending upon the x index number
[changeZoneId, ~] = unique(zoneId,'stable');
x = Xi(index);
y = Yi(index);
% %result% showing the positive percentages of emotions
result(:,2) = logAnsGamma(:,1);
result(:,1) = changeZoneId(:,1);
showMap();
hold on;
plot(x,y);
hold off;