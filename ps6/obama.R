library(readr)
require(parallel)
require(doParallel)
library(foreach)

path = '/global/scratch/paciorek/wikistats_full/dated_for_R'
files <- list.files(path, full.names = T)
nCores <- 24
cl <- makeCluster(nCores)
registerDoParallel(cl)

nsub <- files[1:96]

obama <- foreach (file=nsub, .combine = rbind) %dopar% {
  lines <- readr::read_delim(file,
                             delim = " ", col_names = F, quote = "")
  obama <- lines[grepl("Barack_Obama", lines$X4),]
  
  return(obama)
  gc()
}

outfile = '/global/scratch/yue_hu/hhy/obama96.csv'
write.csv(obama, file = outfile, row.names = FALSE)