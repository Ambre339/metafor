### library(metafor); library(testthat); Sys.setenv(NOT_CRAN="true")

context("Checking misc: plot() function")

test_that("plot can be drawn for rma().", {

   data(dat.bcg, package="metafor")
   dat <- escalc(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat.bcg)
   res <- rma(yi, vi, data=dat)
   plot(res)

   res <- rma(yi ~ ablat, vi, data=dat)
   plot(res)

})

test_that("plot can be drawn for rma.mh().", {

   data(dat.bcg, package="metafor")
   res <- rma.mh(measure="RR", ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat.bcg)
   plot(res)

})

test_that("plot can be drawn for rma.peto().", {

   data(dat.bcg, package="metafor")
   res <- rma.peto(ai=tpos, bi=tneg, ci=cpos, di=cneg, data=dat.bcg)
   plot(res)

})
