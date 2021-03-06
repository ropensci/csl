% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_locales.R
\name{csl_fetch_locales}
\alias{csl_fetch_locales}
\title{Get CSL locales from the web}
\usage{
csl_fetch_locales(...)
}
\arguments{
\item{...}{Curl options passed on to \link[crul:HttpClient]{crul::HttpClient}}
}
\value{
path (character) to the files (invisibly)
}
\description{
Pulls down all CSL locale files into a directory on your machine,
returning the path to that directory
}
\details{
Files are stored in
\code{paste0(rappdirs::user_cache_dir(), "/R/seasl/styles")}. See \link{csl_cache}
for more
}
\examples{
\dontrun{
csl_fetch_locales()
}
}
\references{
https://github.com/citation-style-language/locales
}
