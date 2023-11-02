#' @title imdes

#' @param group group column from phenotype file
#' @param control string defining control in pheno$group data
#' @usage data(res)
#' @usage data(phenotype)
#' @usage data(im)
#' @usage res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
#' @usage imdes.results<-imdes(res,phenotype$group,control="low")
#' @examples  data(data)
#' @examples data(pheno)
#' @examples data(im)
#' @examples res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
#' @examples imdes.results<-imdes(res,phenotype$group,control="low")
#' @examples head(imdes.results)



imdes<-function(res,group,control="control")
{
  if(!require(limma)){

    if (!requireNamespace("BiocManager", quietly = TRUE))
      install.packages("BiocManager")
    BiocManager::install("limma")}

  library(limma)

  # prepare design matrix
  levels <- relevel(as.factor(group),ref=control)
  design <- model.matrix(~levels)
  rownames(design) = colnames(data)

  # perform limma analysis
  tmp <- lmFit(res,design=design)
  fit <- eBayes(tmp)
  res = topTable(fit,number = nrow(data),coef=2)
  res
}

