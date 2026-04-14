#!/usr/bin/env Rscript
library(GEOquery); library(tidyverse)
dir.create('data/geo', showWarnings = FALSE, recursive = TRUE)
for (gse in c('GSE130928', 'GSE162154', 'GSE27597', 'GSE13896')) {
  cat(sprintf('Downloading %s...\n', gse))
  tryCatch({ gse_data <- getGEO(gse, destdir = 'data/geo', GSEMatrix = TRUE); saveRDS(gse_data, sprintf('data/geo/%s.rds', gse)) },
    error = function(e) cat(sprintf('Error: %s\n', e$message)))
}
