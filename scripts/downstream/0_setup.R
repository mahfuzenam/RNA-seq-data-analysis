# Install Bioconductor 
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install(version = "3.21")

# CRAN Packages 
# 1. Install core packages 
core_packages <- c("tidyverse", "ggpubr", "ggsci","RColorBrewer","cowplot", "patchwork")
install.packages(core_packages)

# 2. Bioconductor packages 
bioconductor_packages <- c("tximport", "DESeq2", "EnsDb.Hsapiens.v86", "EnhancedVolcano")
BiocManager::install(bioconductor_packages)

# Install in
BiocManager::install("AnnotationHub")
BiocManager::install("EnsDb.Hsapiens.v86", dependencies = TRUE)
BiocManager::install(
  c("restfulr", "GenomicFeatures", "BiocGenerics", "BiocParallel",
    "curl", "xml2", "RCurl", "httr", "jsonlite"),
  ask = FALSE, update = TRUE
)