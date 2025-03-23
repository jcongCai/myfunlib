
#' This function is used to multiply across columns of dataframes.
#'
#' @param multiplied The dataframe that to be multiplied.
#' @param multiplier The dataframe that you want to multiply. It must be a dataframe with only one row.
#' @param variable The variable that you want to multiply.
#'
#' @return The dataframe that has been multiplied.
#' @export
#'
#' @examples
#' cross_multiply(data.frame(a = c(1,2,3),b = c(4,5,6)),data.frame(a = 1,b = 2),a)
cross_multiply = function(multiplied,multiplier,variable){
  data = multiplied[,as.character(variable)]

  col_multiplied = colnames(data)
  col_multiplier = colnames(multiplier)[-1]

  col_after = paste(rep(col_multiplied,each = ncol(multiplier)-1),col_multiplier,sep = '')

  for(i in 1:length(col_after)){
    ratio = multiplier[1,as.numeric(i)+1] %>% as.numeric()
    multiplied = multiplied %>% mutate(!! col_after[i] := data[,1]*ratio)
  }

  return(multiplied)
}
