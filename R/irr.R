#' Internal rate of return
#'
#' @importFrom stats optimise
#' @param cf Vector of cash flows
#' @param interval a vector containing the end-points of the interval to be searched for the minimum.
#' used if you are using this function as part of an internal rate of return calculation)
#' @details for a given stream of cash flows, return the internal rate of return
#' @export
irr <-
    function(cf, interval = c(-100, 100)) {
        opt <- stats::optimise(npv, interval = interval, cf = cf, return_abs = TRUE)
        return(opt$minimum)
    }
