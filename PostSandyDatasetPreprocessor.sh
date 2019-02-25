start=`date +%s`
mkdir -p datasets
cd datasets
wget ftp://topex.ucsd.edu/pub/srtm15_plus/topo15_compressed.nc
if [ ! -f GSHHS_f_L1.shp ]; then
	if [ ! -f gshhg-shp-2.3.7.zip ]; then
		wget ftp://ftp.soest.hawaii.edu/gshhg/gshhg-shp-2.3.7.zip
	fi
	unzip -p gshhg-shp-2.3.7.zip GSHHS_shp/f/GHHS_f_L1.shp >GHHS_f_L1.shp
	unzip -p gshhg-shp-2.3.7.zip GSHHS_shp/f/GHHS_f_L1.dbf >GHHS_f_L1.dbf
	unzip -p gshhg-shp-2.3.7.zip GSHHS_shp/f/GHHS_f_L1.prj >GHHS_f_L1.prj
	unzip -p gshhg-shp-2.3.7.zip GSHHS_shp/f/GHHS_f_L1.shx >GHHS_f_L1.shx
fi
wget -np -r -nH -L -c --cut-dirs=6 https://www.ngdc.noaa.gov/mgg/inundation/sandy/data/tiles/zip19/
shopt -s nullglob
for i in *.tif; do
    TILE="$(basename "$i" .tif)"
    if [ ! -f "$TILE".nc ]; then
    	echo "Processing $TILE"
    	gdal_translate -of netCDF -co "FORMAT=NC4" "${i}" "$TILE".nc
    fi
    if [ ! -f coastline_"$TILE".shp ]; then
    	echo "Generating coastline for $TILE"
		gdal_contour -fl 0.0 "$TILE".nc coastline_"$TILE".shp
	fi
    rm -rf $TILE.tif
done
end=`date +%s`
runtime=$((end-start))
echo $runtime



