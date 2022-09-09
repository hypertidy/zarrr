src = 'https://ncsa.osn.xsede.org/Pangeo/pangeo-forge/gpcp-feedstock/gpcp.zarr'
import xarray as xr
import matplotlib
array = 'precip'
slice = 1
ds = xr.open_dataset(src, engine='zarr', chunks={})
x = ds[array][:slice,:,:]
x.plot()

