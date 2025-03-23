

#' This function is used to convert polygon .shp data to raster data.
#'
#' @param x The polygon .shp data
#' @param res The resolution of the raster data
#' @param field The field of the polygon data
#' @param fun The function used in the conversion process, see the help of fasterize::fasterize for details.
#'
#' @return The raster data
#' @export
#'
#' @examples
#' polygontotaster('abc.shp',100,'pop','mean')
polygontotaster = function(x,res,field,fun){
  require(fasterize)
  r = raster(x,res = res)
  r = fasterize(x,r,field = field,fun = fun)
  return(r)
}

