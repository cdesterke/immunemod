% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/imset.R
\name{imset}
\alias{imset}
\title{imset}
\usage{
data(res)

data(im)

names(im)

df<-imset(im,data,geneset="Inhibitory")

head(df[,1:5])
}
\arguments{
\item{im}{geneset of immune modulation genes}

\item{data}{transcriptome dataset}

\item{geneset}{names of the selected im geneset}
}
\description{
imset
}
\examples{
data(data)
data(im)
names(im)
df<-imset(im,data,geneset="Inhibitory")
head(df[,1:5])
}
