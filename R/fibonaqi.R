

#' This function is used to calculate the sum of a vector in a Fibonacci sequence.
#'
#' @param vector The vector that you want to calculate.
#'
#' @return The sum of the vector in a Fibonacci sequence.
#' @export
#'
#' @examples
#' fibonaqi(c(1,1,1,1,1,1,1,1,1,1))

fibonaqi = function(vector){
  if(length(vector)<2){
    return(vector)
  }else{
    for(i in 2:length(vector)){
      vector[i] = vector[i]+vector[i-1]
    }
    return(vector)
  }
}

