#' @title imheatmap

#' @param results results obtained from imenrich function or sub-geneset
#' @param phenotype phenotype file from tested samples
#' @param scale method of scaling "none" "row" "column"
#' @param fontsize size of the font on the graph
#' @usage data(data)
#' @usage data(phenotype)
#' @usage data(im)
#' @usage res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
#' @usage imheatmap(res,phenotype,scale="none",fontsize=10)
#' @examples data(data)
#' @examples data(phenotype)
#' @examples data(im)
#' @examples res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
#' @examples imheatmap(res,phenotype,scale="none",fontsize=10)


imheatmap<-function(results,phenotype,scale="none",fontsize=10){
  if(!require(pheatmap)){install.packages("pheatmap")}
  library(pheatmap)

  pheatmap(results,method="ward.D2",scale=scale, clustering_distance_cols = "euclidean",annotation=phenotype,
           clustering_distance_rows = "euclidean",cluster_cols=FALSE,show_colnames=F, fontsize = fontsize,
           color = colorRampPalette(c("navy", "white", "firebrick3"))(50))
}



