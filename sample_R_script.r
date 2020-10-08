#!/usr/bin/env Rscript

#include libraries
library("plyr")


# for custom libraries include library path as well
# library("plyr", lib.loc="~/R/x86_64-redhat-linux-gnu-library/3.4/")


Database_file=commandArgs(TRUE)[1]
N=as.numeric(commandArgs(TRUE)[2])

# Read Database
epl<-read.table(Database_file,sep = "\\", fill=T,quote="",comment.char = "",stringsAsFactors = F)

# Do processing

if (is.na(N)) N=10
res=runif(N)
cat(res,"\n")
