import xarray as xr
def read_zarr(x, array, slice = 1):
 ds = xr.open_dataset(x, engine='zarr', chunks={})
 x = ds[array][:slice,:,:]
 return x.to_numpy()

