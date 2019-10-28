clear all
clc
% n = 0:1:365 ;
n1 = 21;%Vernal equinox
n2 = 51;%Summer solstice
n3 = 79;%Aphelion
n4 = 110;%Autumnal equinox
n5 = 141;%Winter Solstice
n6 = 172;%Vernal equinox
n7 = 355;%Winter Solstice
n8 = 202; %jul


w = ((0:1:360)*pi/180)-pi ;
delt1 = -23.45*cos(2*pi*((n1+10)/360))*pi/180;
delt2 = -23.45*cos(2*pi*((n2+10)/360))*pi/180;
delt3 = -23.45*cos(2*pi*((n3+10)/360))*pi/180;
delt4 = -23.45*cos(2*pi*((n4+10)/360))*pi/180;
delt5 = -23.45*cos(2*pi*((n5+10)/360))*pi/180;
delt6 = -23.45*cos(2*pi*((n6+10)/360))*pi/180;
delt7 = -23.45*cos(2*pi*((n7+10)/360))*pi/180;
delt8 = -23.45*cos(2*pi*((n8+10)/360))*pi/180;

phi = (45.5*pi)/180;

alpha1 = asin(((cos(w).*cos(delt1).*cos(phi)))+(sin(delt1).*sin(phi)))*180/pi;
alpha2 = asin(((cos(w).*cos(delt2).*cos(phi)))+(sin(delt2).*sin(phi)))*180/pi;
alpha3 = asin(((cos(w).*cos(delt3).*cos(phi)))+(sin(delt3).*sin(phi)))*180/pi;
alpha4 = asin(((cos(w).*cos(delt4).*cos(phi)))+(sin(delt4).*sin(phi)))*180/pi;
alpha5 = asin(((cos(w).*cos(delt5).*cos(phi)))+(sin(delt5).*sin(phi)))*180/pi;
alpha6 = asin(((cos(w).*cos(delt6).*cos(phi)))+(sin(delt6).*sin(phi)))*180/pi;
alpha7 = asin(((cos(w).*cos(delt7).*cos(phi)))+(sin(delt7).*sin(phi)))*180/pi;
alpha8 = asin(((cos(w).*cos(delt8).*cos(phi)))+(sin(delt8).*sin(phi)))*180/pi;



%% Printing Image%%
width = 8;     % Width in inches
height = 4;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 14;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

figure(1);
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca,'Fontname','CMU bright','Fontsize',fsz);

plot(w*180/pi,alpha1,'-k',w*180/pi,alpha2,'b'...
    ,w*180/pi,alpha3,'--c',w*180/pi,alpha4,'-.',w*180/pi,alpha5,w*180/pi,alpha6, w*180/pi,alpha8,':r',w*180/pi,alpha7)
legend('January 21, d=21','February 20, d=51',... 
    'March 20, d=79','April 20, d=110','May 21, d=141','Jun 21, d=172','July 21, d=202','December 21, d=355','Location', 'NorthWest')

grid on;
grid minor;

ylim([0 70])
xlim([-180 180])
ylabel('Solar Elevation')
xlabel('Hour Angle')

print(gcf,'solar.png','-dpng','-r300');
% % % % % % % % % % % % % next part

