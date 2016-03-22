#' Prints the candidate and his/her info
#'
#' Prints the candidate's name, party, and status in terms of number delegates won
#' and needed.
#'
#' @param name A character object
#' @param party A character object
#' @param delegatesWon A numeric object
#' @param delegatesNeeded A numeric object with the same dimensionality 
#' as \code{delegatesWon}.
#'
#' @return An object of class Candidate containing
#'  \item{name}{The name of the candidate}
#'  \item{party}{The political party of the candidate}
#'  \item{delegatesWon}{The number of delegates won} 
#'  \item{delegatesNeeded}{The number of delegates needed to get the nomination}
#' @author Joseph Ludmir
#' @rdname print_cand
#' @aliases print_cand,ANY-method
#' @export
#  Creates generic S4 for the print method 
setGeneric(name="print_cand",
           def=function(name, party, delegatesWon, delegatesNeeded, ...)
           {standardGeneric("print_cand")}
)

#' @export
# This method creates a list with all 4 attributes of the candidate and prints it.
setMethod("print_cand", "Candidate", definition = function(name, party, 
          delegatesWon, delegatesNeeded){
  make_list <- list(name, party, delegatesWon, delegatesNeeded)
  print(make_list)
  }
)

  
  
  