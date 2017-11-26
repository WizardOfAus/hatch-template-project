// load necessary libraries e.g.
> ibrary(sp)

// FTP of SolidGrids 
> wg.url <- url("http://gsif.isric.org/lib/exe/fetch.php?media=admin.af.rda")

// load
> load(wg.url)

//import interested datasets
> proj4string(admin.af) <- "+proj=longlat +datum=WGS84"
> country.af <- as(admin.af, "SpatialLines")
> nigeria <- admin.af[admin.af$FORMAL_EN=="Republic of Nigeria",]
> nigeria@bbox
> library(GSIF)
> data(afsp)

// draw
> sites <- afsp$sites
> coordinates(sites) <- ~ LONWGS84 + LATWGS84
> proj4string(sites) <- "+proj=longlat +datum=WGS84"
> plot(nigeria, col="brown", lwd=2, asp=1)
> lines(country.af)
> points(sites, pch="+")