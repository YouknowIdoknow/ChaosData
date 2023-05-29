clc; clear; close all
%%
% load Map_da(1-5)_Dw=(0-0.25)_P=1.5_gth=8770_alphaH=4.mat
% load Map_da(1-5)_Dw=(0-0.25)_P=1.5_gth=9061_alphaH=4.mat
% load Map_da(1-5)_Dw=(0-0.25)_P=1.5_gth=10795_alphaH=4.mat
load Map_da(1-5)_Dw=(0-0.25)_P=1.5_gth=8770_alphaH=4_Time=100.mat


%%
SetFigureRoot;
figure
set(gcf,'unit','centimeters','position',[1 5 24 11.1125]);
subplot(121)
map1 = reshape(g0, size(x1,1), size(x1, 2));
pcolor(x1, y1, map1); shading interp
% surf(x1, y1, map1); view([0 90]); shading interp
% contourf(x1, y1, map1); shading interp
hold on
plot(1.5, 0.1, 'c.', 'MarkerSize',16)
plot(1.96, 0.1, 'c.', 'MarkerSize',16)
plot(2.5, 0.1, 'c.', 'MarkerSize',16)
axis([1 5 0 0.25])
clim([0 1])
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca, 'tickdir', 'out', 'XMinorTick','on','YMinorTick','on')
xlabel('d/a')
ylabel('\Deltaf (GHz)')
set(gca, 'InnerPosition', [0.07,0.120428568590255,0.35,0.84])
h1 = colorbar;
set(get(h1,'Title'),'string','<g_0>_t');
h1.Position = [0.44,0.12,0.023520764424844,0.78];
%%
subplot(122)
map2 = reshape(SI, size(x1,1), size(x1, 2));
pcolor(x1, y1, map2); shading interp
% surf(x1, y1, map2); view([0 90]); shading interp
% contourf(x1, y1, map2); shading interp
hold on
plot(1.5, 0.1, 'c.', 'MarkerSize',16)
plot(1.96, 0.1, 'c.', 'MarkerSize',16)
plot(2.5, 0.1, 'c.', 'MarkerSize',16)
% surf(x1, y1, map2); view([0 90]); shading interp
colormap(jet)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
set(gca, 'tickdir', 'out', 'XMinorTick','on','YMinorTick','on')
axis([1 5 0 0.25])
xlabel('d/a')
ylabel('\Deltaf (GHz)')
set(gca, 'InnerPosition', [0.57,0.120428568590255,0.35,0.84]);
h2 = colorbar;
h2.Position = [0.94,0.12,0.023520764424844,0.8];
set(get(h2,'Title'),'string','SI');
clim([0 1])
