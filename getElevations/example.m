 
% this is no longer work, because to use the google Elevation API, you need
% a Google Cloud project with a billing account and the Elevation API
% enabled
lat = linspace(36.250278, 36.578581, 40);
 lon = linspace(-116.825833, -118.291995, 40);
 dist= linspace(0, 130, 20);
 elevation = getElevations(lat, lon);
 plot(dist,elevation)
 title('Elevation profile from Death Valley to Mt. Whitney in California');
 xlabel('distance in km');
 ylabel('elevation in meters');