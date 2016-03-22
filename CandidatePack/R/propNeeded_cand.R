#' Calculate percentage of remaining delegates needed by a specific presidential candidate.
#'
#' This is a function that calculates the percentage of remaining delegates needed.
#'
#' @param candidate An object of the class 'Candidate'
#' @param available_delegates The number of delegates available to a candidate.
#'
#' @return The proportion needed to get the respective party's nomination.
#'
#' @author Joseph Ludmir \email{jludmir@@wustl.edu}
#' 
#' @seealso \code{\link{initialize_cand}}, \code{\link{Candidate}}
#' @rdname propNeeded
#' @aliases propNeeded,ANY-method
#' @export

setGeneric(name = "propNeeded_cand",
           def = function(candidate, available.delegates)
           {standardGeneric("propNeeded_cand")}
)

setMethod(f = "propNeeded_cand",
          definition = function(candidate, available.delegates) {
            percentage_delegates <- (candidate@delegatesNeeded) / available.delegates
            return(ifelse(percentage_delegates <= 1, proportion,
                          "Not enough delegates remaining")
          })