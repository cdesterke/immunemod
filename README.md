# immunemod
## immunemod: R-package which allows to compute immune score based on expression of molecules grouped in nine distinct classes of immune modulation functions





### package installation
```r
library(devtools)
install_github("cdesterke/immunemod")
```
### description
immunemod is a R-package based on nine genesets implicated in immune modulation extracted from the the study: "immune landscape of cancer" (Thorsson et al. 2018).



### immunemod scoring based on GSVA algorithm: function "imenrich"
```r
library(immunemod)
data(data)
data(phenotype)
data(im)
res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
head(res[,1:6])
```
![res](https://github.com/cdesterke/immunemod/blob/main/imenrich.png)

### heatmap of the immunemod enrichments: function "imheatmap"
```r
library(immunemod)
data(data)
data(phenotype)
data(im)
res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
imheatmap(res,phenotype,scale="none",fontsize=10)
```
![res](https://github.com/cdesterke/immunemod/blob/main/imheatmap.png)

### boxplot of the immunemod enrichments: function "imboxplot"
```r
library(immunemod)
data(data)
data(phenotype)
data(im)
res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
imboxplot(res,phenotype,id="group",fontsize=14)
```
![res](https://github.com/cdesterke/immunemod/blob/main/imboxplot.png)


### differential expression score of the immunemod enrichments: function "imdes"
```r
data(data)
data(pheno)
data(im)
res<-imenrich(data,im,method="zscore",kcdf = "Gaussian")
imdes.results<-imdes(res,phenotype$group,control="low")
head(imdes.results)
```
![res](https://github.com/cdesterke/immunemod/blob/main/imdes.png)




## REFERENCES
> Thorsson, Vésteinn, David L. Gibbs, Scott D. Brown, Denise Wolf, Dante S. Bortone, Tai-Hsien Ou Yang, Eduard Porta-Pardo, et al. 2018. « The Immune Landscape of Cancer ». Immunity 48 (4): 812-830.e14. https://doi.org/10.1016/j.immuni.2018.03.023.
