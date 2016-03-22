#' Initializing the class Candidate with a set Method
#'
#' Creates a presidential candidate
#'
#' @param name A character object, the name of the candidate
#' @param party A character object, what party the candidate belongs to.
#' @param delegatesWon A numeric object, the number of delegates won.
#' @param delegatesNeeded A numeric object with the same dimensionality as \code{delegatesWon}.
#' @return An object of class Candidate containing
#'  \item{name}
#'  \item{party}
#'  \item{delegatesWon}
#'  \item{delegatesNeeded}
#' @author Joseph Ludmir
#' @examples
#' 
#' name <- Joe
#' party <- Republican
#' delegatesWon <- 2001 
#' initialize_cand(Joe, Republican, 2001)
#' @rdname initialize_cand
#' @aliases initizalize_cand,ANY-method
#' @export
setGeneric(name = "initialize_cand", 
definition = function(name, party, delegatesWon){
standardGeneric("initialize_cand")}
)
setMethod(f = "initialize_cand",# defining the name
definition = function(name, party, delegatesWon){
    if (party == "Democrat"){
      delegatesNeeded = 2383 - delegatesWon;
    }
    if (party == "Republican"){
      delegatesNeeded = 1237 - delegatesWon;
    }
return(new("Candidate", name = name, party = party, delegates_won = delegates_won, delegates_needed = delegates_needed))
          })