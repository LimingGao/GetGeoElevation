# GetGeoElevation
Get the geographic elevation given latitude and longitude using matlab

Three methods are found,
1) getElevations, using google Map API, but it requires an billing Google Cloud account to work
2) terrain-elevation-master,Download the USGS(United States Geological Survey) 1/3 arc-second data using a url, works well
3) mapprofile, Download *.tif elevation data manually and read the data, need further test. 

method 2 and method 3 can do a rectangle region and line segment region eleveation query, need to figure out how to query the eleveation given discrete points
