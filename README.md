>> Resample_HSOFS
Read_shapefile: loading GSHHS_f_L1
Reading shapefile with shaperead
Partitioning the boundary into islands, mainland, ocean
Read in contourfile GSHHS_f_L1
Read in demfile topo15_compressed.nc
Building feature size function...
Building wavelength function...
Building slope function...
INFO: Rossby radius of deformation filter on.
i = 1 rl/dx = 2.1855
i = 2 rl/dx = 3
i = 4 rl/dx = 2.3333
i = 8 rl/dx = 2.1429
i = 16 rl/dx = 2.0667
i = 32 rl/dx = 2.0323
i = 64 rl/dx = 2.0159
i = 128 rl/dx = 2.0079
Relaxing the gradient
Gradient relaxing converged!
Enforcing timestep of 4.032 seconds.
Finalized edge function!
Read_shapefile: loading datasets/GSHHS_f_L1.shp
Reading shapefile with shaperead
Partitioning the boundary into islands, mainland, ocean
Read in contourfile datasets/GSHHS_f_L1.shp
Read in demfile datasets/ncei19_n39x00_w075x00_2014v1.nc
Building feature size function...
Building wavelength function...
Building slope function...
INFO: Rossby radius of deformation filter on.
i = 1 rl/dx = 12.938
i = 2 rl/dx = 3
i = 4 rl/dx = 2.3333
i = 8 rl/dx = 2.1429
i = 16 rl/dx = 2.0667
i = 32 rl/dx = 2.0323
i = 64 rl/dx = 2.0159
i = 128 rl/dx = 2.0079
Relaxing the gradient
Gradient relaxing converged!
Enforcing timestep of 1.2736 seconds.
Finalized edge function!
Read_shapefile: loading datasets/coastline_ncei19_n39x00_w075x00_2014v1.shp
Reading shapefile with shaperead
Partitioning the boundary into islands, mainland, ocean
Dot indexing is not supported for variables of this type.

Error in Read_shapefile (line 85)
    tmpM = [[SG.X]',[SG.Y]'] ; % MAT

Error in geodata (line 127)
                polygon_struct = Read_shapefile( obj.contourfile, [], obj.bbox, ...

Error in Resample_HSOFS (line 27)
    gdat{ii+1} = geodata('shp',coastline{ii},...
 
>> 