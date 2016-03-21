#' A squared value object 
#' 
#' Object of class \code{Candidates} are created by the \code{addSquares} and \code{subtractSquares} functions
#'
#' 
#' An object of the class `Candidates' has the following slots:
#' \itemize{
#' \item \code{name} The name of the candidate running.
#' \item \code{delegatesWon} How many delegates the candidate has won so far.
#' \item \code{party} Which political party is the candidate representing
#' \item \code{delegatesNeeded} How many delegates more are needed to secure the nomination.
#' }
#'
#' @author Joseph Ludmir: \email{jludmir@@wustl.edu}
#' @aliases Candidates-class initialize,Squares-method getSquares,Squares-method 
#' @rdname Candidates
#' @export
setClass(Class = "Candidates",
         representation = respresentation(
           name = "character",
           delegatesWon = "numeric",
           party = "character",
           delegatesNeeded = "numeric"
         ),
         prototype = prototype(
           name = c(),
           delegatesWon = c(),
           party = c(),
           delegatesNeeded = c()
         )
)
