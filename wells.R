
library(XML)

## this is the location of the Wells tracking data maintained by the regions
## and NFA
URL <- "http://dhhnet/departments/oaas/PO/_vti_bin/ListData.svc/WellsTracking"
dat <- xmlParse(readLines(URL))

## get the individual list items
items = getNodeSet(dat, "//m:properties")

## convert to a data frame
df = xmlToDataFrame(items)

## clean up date data
df$DateLetterSent = as.Date(df$DateLetterSent)
df$Modified = as.Date(df$Modified)
df$Created = as.Date(df$Created)

