## replication - the ultimate standard for scientific evidence
## reproducible research: make analytic data and code available
## so that other may reproduce findings

## can at least redo analysis

## research pipeline
## measured data - analytic data - computational results - graphs, tables, etc

## what do we need?
## analytic data are available (not raw data)
## analytic code
## Documenation
## Standardization

interview = c(27, 28, 27, 23, 26)
exercise = c(9,9,7,8,7.5)
plot(interview, exercise, xlim = c(15, 30), ylim = c(5, 10))

library(XML)
URL <- "http://dhhnet/departments/oaas/PO/_vti_bin/ListData.svc/WellsTracking"
dat <- readLines(URL)



