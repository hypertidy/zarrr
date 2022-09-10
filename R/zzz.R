# global reference to xarray (will be initialized in .onLoad)
xarray <- NULL

.onLoad <- function(libname, pkgname) {
  # use superassignment to update global reference to scipy
  xarray <<- reticulate::import("xarray", delay_load = TRUE)
}
