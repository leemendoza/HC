library(data.table)
library(plyr)
library(dplyr)
library(stringr)
library(ggplot2)
library(maps)
library(bit64)
library(RColorBrewer)
library(choroplethr)

## read in the employment data

dt = fread("c:\\data\\2012.annual.singlefile.csv", sep=",", colClasses=c("character", rep("integer", 5), 
                                                                         "character", "character",
                                                                         "integer64", "integer64",
                                                                         "integer64", "integer64", "integer64",
                                                                         "integer", "integer", "character",
                                                                         rep("numeric", 7)))
## take a peek at the data
dim(dt)
head(dt)

## additional data
for (u in c("agglevel", "area", "industry", "ownership", "size")) {
    assign(u, read.csv(paste("c:\\data\\", u, "_titles.csv", sep=""), stringsAsFactors=F))
}
