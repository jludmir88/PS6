#' A candidate object.
#' 
#' Object of class \code{Candidate} are created by the \code{name} and \code{delegatesWon}
#' and \code{party} and \code{delegatesNeeded}  
#'
#' 
#' An object of the class `Candidate' has the following slots:
#' \itemize{
#' \item \code{name} The name of the candidate running.
#' \item \code{delegatesWon} How many delegates the candidate has won so far.
#' \item \code{party} Which political party is the candidate representing
#' \item \code{delegatesNeeded} How many delegates the candidate needs to win the nomination.
#' }
#'
#' @author Joseph Ludmir: \email{jludmir@@wustl.edu}
#' @aliases Candidate-class initialize,Squares-method getSquares,Squares-method 
#' @rdname Candidate
#' @export
setClass(Class = "Candidate",
         representation = representation(
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
         
),
validity = function(object){
  if (object@party != ("Democrat" | "Republican")){
    stop("The party you selected is not appropriate, 
         please choose Republican or Democrat")
    }
  }
)
setMethod("initialize", "Candidate", 
function(.Object, name, party, delegatesWon){
    .Object@name <- name
    .Object@party <- party
    .Object@delegatesWon <- delegatesWon
  if(party == "Republican"){
  .Object@delegatesNeeded <- (1237 - .Object@delegatesWon) 
  }
  if(party == "Democrat"){
  .Object@delegatesNeeded <- (2383 - .Object@delegatesWon)
  }
            value=callNextMethod()
            return(value)
          }
) 