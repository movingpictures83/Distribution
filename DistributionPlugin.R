library(SINCERA)

input <- function(inputfile) {
   mySC <<- readRDS(inputfile)
}

run <- function() {}

output <- function(outputfile) {
pdf(outputfile)
# Run batch.analysis function to generate plots that may help identify potential batch differences.
sc <- batch.analysis(mySC, analysis=c("distribution"), min.expression=1)
saveRDS(sc,paste(outputfile,"rds",sep="."))
}
