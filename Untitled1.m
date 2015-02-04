clear
clc
close all
% load the learned data from the directory
load('VAR_DATA.mat');
load('CONST_DATA.mat');
idNumber1 = 61;
idNumber2 = 100;
idNumber3 = 99;
idNumber4 = 98;
idNumber5 = 97;
idNumber6 = 96;
idNumber7 = 95;
idNumber8 = 94;
idNumber9 = 93;
idNumber10 = 92;

[changeTime1,GammaP1,GammaN1,logAnsGamma1] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber1);
[changeTime2,GammaP2,GammaN2,logAnsGamma2] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber2);
[changeTime3,GammaP2,GammaN2,logAnsGamma3] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber3);
[changeTime4,GammaP2,GammaN2,logAnsGamma4] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber4);
[changeTime5,GammaP2,GammaN2,logAnsGamma5] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber5);
[changeTime6,GammaP2,GammaN2,logAnsGamma6] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber6);
[changeTime7,GammaP2,GammaN2,logAnsGamma7] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber7);
[changeTime8,GammaP2,GammaN2,logAnsGamma8] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber8);
[changeTime9,GammaP2,GammaN2,logAnsGamma9] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber9);
[changeTime10,GammaP2,GammaN2,logAnsGamma10] = testTrajectory('C:\Users\sulman.baig\Documents\DATA\50-100', 1, idNumber10);

% load the learned data from the directory
load('VAR_DATA.mat');
load('CONST_DATA.mat');
% get the file data from the path and number given as input to the function
dataPath = strcat('C:\Users\sulman.baig\Documents\DATA\50-100','\');
dataFiles = dir(strcat(dataPath,'*.dat'));
[TimeStamp,IDx,Xi,Yi] = importFileData(strcat(dataPath,dataFiles(1).name));
% search for the id in the file given as input 
index1 = find(IDx == idNumber1);
x1=Xi(index1);
y1=Yi(index1);
t1=TimeStamp(index1);
index2 = find(IDx == idNumber2);
x2=Xi(index2);
y2=Yi(index2);
t2=TimeStamp(index2);
index3 = find(IDx == idNumber3);
x3=Xi(index3);
y3=Yi(index3);
t3=TimeStamp(index3);
index4 = find(IDx == idNumber4);
x4=Xi(index4);
y4=Yi(index4);
t4=TimeStamp(index4);
index5 = find(IDx == idNumber5);
x5=Xi(index5);
y5=Yi(index5);
t5=TimeStamp(index5);
index6 = find(IDx == idNumber6);
x6=Xi(index6);
y6=Yi(index6);
t6=TimeStamp(index6);
index7 = find(IDx == idNumber7);
x7=Xi(index7);
y7=Yi(index7);
t7=TimeStamp(index7);
index8 = find(IDx == idNumber8);
x8=Xi(index8);
y8=Yi(index8);
t8=TimeStamp(index8);
index9 = find(IDx == idNumber9);
x9=Xi(index9);
y9=Yi(index9);
t9=TimeStamp(index9);
index10 = find(IDx == idNumber10);
x10=Xi(index10);
y10=Yi(index10);
t10=TimeStamp(index10);

for s=1:1:size(ZONE,1)
        line([ZONE(s,1) ZONE(s,3)],[ZONE(s,2) ZONE(s,2)],'Marker','.','LineStyle',':','Color',[0,1,0])
        line([ZONE(s,3) ZONE(s,3)],[ZONE(s,2) ZONE(s,4)],'Marker','.','LineStyle',':','Color',[0,1,0])
        line([ZONE(s,3) ZONE(s,1)],[ZONE(s,4) ZONE(s,4)],'Marker','.','LineStyle',':','Color',[0,1,0])
        line([ZONE(s,1) ZONE(s,1)],[ZONE(s,4) ZONE(s,2)],'Marker','.','LineStyle',':','Color',[0,1,0])
        text((ZONE(s,1)+ZONE(s,3))/2,(ZONE(s,2)+ZONE(s,4))/2 , num2str(s), 'VerticalAlignment','bottom', ...
            'HorizontalAlignment','right')
end
clearvars s
hold on
pStr1 = '';
pStr2 = '';
pStr3 = '';
pStr4 = '';
pStr5 = '';
pStr6 = '';
pStr7 = '';
pStr8 = '';
pStr9 = '';
pStr10 = '';

for s=1:1:6000
    p1 = find(changeTime1==t1(s));
    p2 = find(changeTime2==t2(s));
    p3 = find(changeTime3==t3(s));
    p4 = find(changeTime4==t4(s));
    p5 = find(changeTime5==t5(s));
    p6 = find(changeTime6==t6(s));
    p7 = find(changeTime7==t7(s));
    p8 = find(changeTime8==t8(s));
    p9 = find(changeTime9==t9(s));
    p10 = find(changeTime10==t10(s));
    if(~isempty(p1))
        percent = logAnsGamma1(p1)*100;
        pStr1 = strcat(num2str(percent),'%');
    end
    if(~isempty(p2))
        percent = logAnsGamma2(p2)*100;
        pStr2 = strcat(num2str(percent),'%');
    end
    if(~isempty(p3))
        percent = logAnsGamma3(p3)*100;
        pStr3 = strcat(num2str(percent),'%');
    end
    if(~isempty(p4))
        percent = logAnsGamma4(p4)*100;
        pStr4 = strcat(num2str(percent),'%');
    end
    if(~isempty(p5))
        percent = logAnsGamma5(p5)*100;
        pStr5 = strcat(num2str(percent),'%');
    end
    if(~isempty(p6))
        percent = logAnsGamma6(p6)*100;
        pStr6 = strcat(num2str(percent),'%');
    end
    if(~isempty(p7))
        percent = logAnsGamma7(p7)*100;
        pStr7 = strcat(num2str(percent),'%');
    end
    if(~isempty(p8))
        percent = logAnsGamma8(p8)*100;
        pStr8 = strcat(num2str(percent),'%');
    end
    if(~isempty(p9))
        percent = logAnsGamma9(p9)*100;
        pStr9 = strcat(num2str(percent),'%');
    end
    if(~isempty(p10))
        percent = logAnsGamma10(p10)*100;
        pStr10 = strcat(num2str(percent),'%');
    end
    
    if(~isempty(x1(s)))
    scatter(x1(s),y1(s),'.','k');
    h = text(x1(s)+0.15,y1(s)+0.5,pStr1,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x2(s)))
    scatter(x2(s),y2(s),'.','k');
    g = text(x2(s)+0.15,y2(s)+0.5,pStr2,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x3(s)))
    scatter(x3(s),y3(s),'.','k');
    g3 = text(x3(s)+0.15,y3(s)+0.5,pStr3,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x4(s)))
    scatter(x4(s),y4(s),'.','k');
    g4 = text(x4(s)+0.15,y4(s)+0.5,pStr4,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x5(s)))
    scatter(x5(s),y5(s),'.','k');
    g5 = text(x5(s)+0.15,y5(s)+0.5,pStr5,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x6(s)))
    scatter(x6(s),y6(s),'.','k');
    g6 = text(x6(s)+0.15,y6(s)+0.5,pStr6,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x7(s)))
    scatter(x7(s),y7(s),'.','k');
    g7 = text(x7(s)+0.15,y7(s)+0.5,pStr7,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x8(s)))
    scatter(x8(s),y8(s),'.','k');
    g8 = text(x8(s)+0.15,y8(s)+0.5,pStr8,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x9(s)))
    scatter(x9(s),y9(s),'.','k');
    g9 = text(x9(s)+0.15,y9(s)+0.5,pStr9,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    if(~isempty(x10(s)))
    scatter(x10(s),y10(s),'.','k');
    g10 = text(x10(s)+0.15,y10(s)+0.5,pStr10,'BackgroundColor',[.7 .9 .7],'FontSize',14);
    end
    pause(0.001);
    delete(h);
    delete(g);
    delete(g3);
    delete(g4);
    delete(g5);
    delete(g6);
    delete(g7);
    delete(g8);
    delete(g9);
    delete(g10);
end
hold off

