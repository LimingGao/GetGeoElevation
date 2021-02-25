clear all;
close all;

load korea5c
plat = [ 43  43  41  38];
plon = [116 120 126 128];
mapprofile(korea5c,korea5cR,plat,plon);
[zi,ri,lat,lon] = mapprofile(korea5c,korea5cR,plat,plon);

load coastlines
plotm(coastlat,coastlon)
geoshow('worldcities.shp','Marker','.','Color', 'red')


figure(2)
plot(deg2km(ri),zi/1000)
daspect([ 1 1/200 1 ]);
xlabel 'Range (km)'
ylabel 'Elevation (km)'
%%
%info = readinfo('USGS_13_n41w078.tif')
% download elevation data from https://www.mathworks.com/help/map/finding-raster-geodata.html#mw_d794765a-33f0-47c1-a4ab-faddcc30745d
[A,R] = geotiffread('USGS_13_n41w078.tif',1); %fix bug by https://cosmojiang.wordpress.com/2018/04/02/matlab-geotiffread-for-multiple-layers/

plat = [ 40  41 ];
plon = [-78 -76 ];
mapprofile(A,R,plat,plon);

%mapshow(A,R)
latlim = R.LatitudeLimits;
lonlim = R.LongitudeLimits;
worldmap(latlim, lonlim)
meshm(A,R,size(A),A)
demcmap(A)

