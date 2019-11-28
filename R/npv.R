#' Net present value
#'
#' @param discount Discount rate, as a percentage (eg "7" means 7%)
#' @param cf Vector of cash flows
#' @param return_abs Whether or not to return the absolute value of the net present value (only likely to be
#' used if you are using this function as part of an internal rate of return calculation)
#' @details for a given stream of cash flows, number of years and discount rate, return the net
#' present value
#' @export
npv <-
    function(discount, cf, return_abs = FALSE) {
        if (discount < 1) {
            warning("The unit of discount is percentage, as xx%.")
        }


        # 1- d = 1/(1+d) => 1 - d^2 = 1
        multiplier <- 1 / (1 + discount / 100)

        m <- length(cf) - 1

        npv <-
            sum(cf  * multiplier ^ (0:m))
        if (return_abs) {
            npv <- abs(npv)
        }
        return(npv)
    }
