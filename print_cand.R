#' Prints the candidate and his/her status in the primary.
#'
#' Prints the candidate's name, party, and status in terms of number delegates won
#' and needed.
#'
#' @param name A character object
#' @param delegatesWon A numeric object
#' @param party A character object
#' @param delegatesNeeded A numeric object with the same dimensionality 
#' as \code{delegatesWon}.
#'
#' @return An object of class Candidates containing
#'  \item{name}{The name of the candidate}
#'  \item{delegatesWon}{The number of delegates won} 
#'  \item{party}{The political party of the candidate}
#'  \item{delegatesNeeded}{The number of delegates needed to get the nomination}
#' @author Joseph Ludmir
#' @rdname print_cand
#' @aliases print_cand,ANY-method
#' @export
setGeneric(name="print_cand",
           def=function(name, delegatesWon, party, delegatesNeeded, ...)
           {standardGeneric("print_cand")}
)

#' @export
setMethod(f="addSquares",
          definition=function(name, delegatesWon, party, ...){
           print(new("Candidate", name = name, party = party, 
                     delegatesWon = delegatesWon, delegatesNeeded = delegatesNeeded))
          }
)


  
  
  