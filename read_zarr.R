
src <-  'https://ncsa.osn.xsede.org/Pangeo/pangeo-forge/gpcp-feedstock/gpcp.zarr'
reticulate::source_python("read_zarr.py")
x <- read_zarr(src, "precip", slice = 1L)[1L, , , drop = TRUE]
xs <- read_zarr_raw(src, "lon_bounds")
ys <- read_zarr_raw(src, "lat_bounds")
ex <- c(range(xs), range(ys))
ximage::ximage(x[nrow(x):1,  ], extent = ex, col = hcl.colors(256))
maps::map("world2", add = TRUE)
