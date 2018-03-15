# https://github.com/zachmayer/kaggleNCAA
devtools::install_github('zachmayer/kaggleNCAA')

rm(list=ls())

setwd('March Madness 2018')
file = ('stage2_submission1.csv')
pred = read.csv(file = file, head=TRUE, sep=",")

set.seed(1)
library('kaggleNCAA')
dat <- parseBracket(file, w=0) 
sim <- simTourney(dat, 1000, progress=TRUE)

bracket <- extractBracket(sim)
printableBracket(bracket) 
