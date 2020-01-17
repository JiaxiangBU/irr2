
<!-- README.md is generated from README.Rmd. Please edit that file -->

# irr2

<!-- badges: start -->

[![DOI](https://zenodo.org/badge/224571371.svg)](https://zenodo.org/badge/latestdoi/224571371)
<!-- badges: end -->

The goal of irr2 is to calculate IRR and NPV. The related functions
inspired by Ellis (2019).

## Installation

You can install the released version of irr2 from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("irr2")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("JiaxiangBU/irr2")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(irr2)
## basic example code
```

There is a stream of cash flows, down payment with 2200, and next pay
back 752.97 each month. To calcuate the IRR per year.

``` r
cf1 <- c(-2200, rep(752.9700, 3))
cf1
#> [1] -2200.00   752.97   752.97   752.97
irr_m <- irr(cf = cf1)
#> Warning in f(arg, ...): The unit of discount is percentage, as xx%.

#> Warning in f(arg, ...): The unit of discount is percentage, as xx%.

#> Warning in f(arg, ...): The unit of discount is percentage, as xx%.

#> Warning in f(arg, ...): The unit of discount is percentage, as xx%.
irr_m
#> [1] 1.33299
((irr_m/100+1)^12-1)*100
#> [1] 17.22232
```

If the discount rate is 2%, calcuate NPV of this cash flows. If the
discount rate is 1%, calcuate NPV of this cash flows.

``` r
npv(discount = 2, cf = cf1)
#> [1] -28.52241
npv(discount = 1.33299, cf = cf1)
#> [1] -0.0004258612
npv(discount = 1, cf = cf1)
#> [1] 14.47363
```

``` r
irr2 <- irr(c(-100, 39, 59, 55, 20))/100
#> Warning in f(arg, ...): The unit of discount is percentage, as xx%.
irr2
#> [1] 0.2809484
-100 +
    39/(1+irr2)^1 +
    59/(1+irr2)^2 +
    55/(1+irr2)^3 +
    20/(1+irr2)^4
#> [1] -3.680089e-06
```

## Citations

Jiaxiang Li. (2019, November 28). JiaxiangBU/irr2: irr2 0.1.0 (Version
v0.1.0). Zenodo. <http://doi.org/10.5281/zenodo.3555642>

``` bibtex
@software{jiaxiang_li_2019_3555642,
  author       = {Jiaxiang Li},
  title        = {JiaxiangBU/irr2: irr2 0.1.0},
  month        = nov,
  year         = 2019,
  publisher    = {Zenodo},
  version      = {v0.1.0},
  doi          = {10.5281/zenodo.3555642},
  url          = {https://doi.org/10.5281/zenodo.3555642}
}
```

If you use irr2, I would be very grateful if you can add a citation in
your published work. By citing irr2, beyond acknowledging the work, you
contribute to make it more visible and guarantee its growing and
sustainability. For citation, please use the BibTex or the citation
content.

-----

<h4 align="center">

**Code of Conduct**

</h4>

<h6 align="center">

Please note that the `irr2` project is released with a [Contributor Code
of
Conduct](https://github.com/JiaxiangBU/irr2/blob/master/CODE_OF_CONDUCT.md).<br>By
contributing to this project, you agree to abide by its terms.

</h6>

<h4 align="center">

**License**

</h4>

<h6 align="center">

MIT © [Jiaxiang
Li](https://github.com/JiaxiangBU/irr2/blob/master/LICENSE.md)

</h6>

## Reference

<div id="refs" class="references">

<div id="ref-Ellis2019CBA">

Ellis, Peter. 2019. “Cost-Benefit Analysis in R.” free range statistics.
2019.
<http://freerangestats.info/blog/2019/11/24/cost-benefit-analysis>.

</div>

</div>
