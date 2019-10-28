clear all
clc

n = 0:1:365;
w = 0;
phi = (45.5.*pi)/180;

delta = -23.45.*cos(2.*pi.*((n+10)/360)).*pi/180;

% alpha = asin(((cos(w).*cos(delta).*cos(phi)))+(sin(delta).*sin(phi))).*180/pi;
Am = (1./cos((45.5*pi/180)-delta));
I = 1000.*(1./Am).*1.367.*cos((-delta));

% I = 1000 .* cos(phi-delta) .* 1.367 .* cos((phi-delta));

%% Printing Image%%
width = 4;     % Width in inches
height = 5;    % Height in inches
alw = 0.75;    % AxesLineWidth
fsz = 14;      % Fontsize
lw = 1.5;      % LineWidth
msz = 8;       % MarkerSize

figure(1);
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(gca,'Fontname','CMU bright','Fontsize',fsz);


plot(n,I,'r');
grid on;
grid minor;

xlim([0 365]);
ylabel('Solar Insolation (w/m^-^2)');
xlabel('Day');

print(gcf,'insolation.png','-dpng','-r300');
