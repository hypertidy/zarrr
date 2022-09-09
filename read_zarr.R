src <-  'https://ncsa.osn.xsede.org/Pangeo/pangeo-forge/gpcp-feedstock/gpcp.zarr'
reticulate::source_python("read_zarr.py")
x <- read_zarr(src, "precip", slice = 1L)[1L, , , drop = TRUE]
ximage::ximage(x[nrow(x):1,  ], extent = c(0, 360, -90, 90), col = hcl.colors(256))
maps::map("world2", add = TRUE)
