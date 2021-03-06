% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Matrix.R
\name{writeMatrix}
\alias{writeMatrix}
\title{Write count data in the 10x format, with additional metadata}
\usage{
writeMatrix(dir, matrix, barcodes, features_tsv_file, metadata, gzip = TRUE)
}
\arguments{
\item{dir}{Path to the output directory.
(Does not need to exist yet).}

\item{matrix}{A sparse numeric matrix of UMI counts.}

\item{barcodes}{A character vector of cell barcodes,
one per column of \code{x}.}

\item{features_tsv_file}{The path to the original features tsv file.}

\item{metadata}{Table of cell metadata.}

\item{gzip}{Should the output files be compresssed?
Includes \code{c("code", "agg_id", "barcode", "seq_id", "sample_id"}
and any metadata encoded in the sample file names.}
}
\value{
\code{TRUE} if successful.
}
\description{
Create a directory containing the count matrix and cell/gene annotation
from a sparse matrix of UMI counts,
in the format produced by the CellRanger software suite.
In addition, write an accompanying metadata file.
}
