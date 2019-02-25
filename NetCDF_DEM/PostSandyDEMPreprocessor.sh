shopt -s nullglob
for i in "$PostSandyTileCollection"/*/*.tif; do
    TILE="$(basename "$i" .tif)"
    if [ ! -f "$TILE".nc ]; then
    	echo "Processing $TILE"
    	gdal_translate -of netCDF -co "FORMAT=NC4" "${i}" "$TILE".nc
	fi
	if [ ! -f coastline_"${TILE}".shp ]; then
		echo "Generating coastline for $TILE"
		gdal_contour -fl 0.0 "$TILE".nc NetCDF_DEM/coastline_"$TILE".shp
	fi
done






