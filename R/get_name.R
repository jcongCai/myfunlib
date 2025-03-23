
#' Get the file name from the full path
#'
#' @param x The full path
#' @param i The index of the file name
#' @param suf The suffix of the file name
#'
#' @return The file name
#' @export
#'
#' @examples
#' get_name('C:/Users/username/Desktop/abc.txt',5,'.txt')

get_name = function(x,i,suf){
  require(stringr)
  require(purrr)
  a = map_vec(x,function(x){str_split(x,pattern = '/|\\\\')}[[1]][i])
  b = map_vec(a,function(x){str_replace(x,pattern = suf,'')})
  return(b)
}


