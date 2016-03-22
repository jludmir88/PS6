#' Shows the candidate's status in the primary.
#'
#' Shows the candidate's name, party, and status in terms of number delegates won
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
#' @rdname show_cand
#' @aliases show_cand,ANY-method
#' @export
#  Creates generic S4 for the show method 
setGeneric(name="show_cand",
           def=function(name, party, delegatesWon, delegatesNeeded, ...)
           {standardGeneric("show_cand")}
)

#' @export
# This method creates a statement with the status of the candidate relative to how many primaries are left.
setMethod("show_cand", "Candidate", def = function(object){
  show_status <- paste("In this race", object@name, "of the", object@party, 
                       "party", "has", object@delegatesWon, "delegates so far.", "he/she needs",
                       object@delegatesNeeded, "to win the nomination.", sep = " ")
  }
)