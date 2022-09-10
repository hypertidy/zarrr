#@importFrom reticulate source_python
#NULL

#reticulate::source_python(system.file("python/read_zarr.py", package = "zarrr", mustWork = TRUE))


#' xarray object in R from a Zarr source
#'
#' Get an xarray object with a Zarr source.
#' @export
#' @importFrom reticulate dict
#' @name xarray_zarr
#' @name ... reserved
#' @param x Zarr source
xarray_zarr <- function(x, ...) {
  xarray$open_dataset(x, engine = 'zarr', chunks = reticulate::dict())
}
