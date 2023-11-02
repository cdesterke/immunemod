#' @title imenrich

#' @param data transcriptome matrix
#' @param im immune modulation genesets
#' @param method GSVA method of enrichment: "gsva", "ssgsea", "zscore", "plage"
#' @param kcdf data distribution "Gaussian", "Poisson", "none"
#' @usage data(data)
#' @usage data(phenotype)
#' @usage data(im)
#' @usage res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
#' @usage head(res[,1:6])
#' @examples data(data)
#' @examples data(phenotype)
#' @examples data(im)
#' @examples res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
#' @examples head(res[,1:6])


imenrich<-function(data,im,method="zscore",kcdf="Gaussian"){
 if(!require(GSVA))
   {if (!require("BiocManager", quietly = TRUE))
   install.packages("BiocManager")
   BiocManager::install("GSVA")}
  library(GSVA)
  data<-as.matrix(data)
  results<-gsva(data,im,method=method,kcdf=kcdf)
  return(results)
}



