% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Networks.R
\name{addCyEdges}
\alias{addCyEdges}
\title{Add CyEdges}
\usage{
addCyEdges(
  source.target.list,
  edgeType = "interacts with",
  directed = FALSE,
  network = NULL,
  base.url = .defaultBaseUrl
)
}
\arguments{
\item{source.target.list}{A \code{list} (or \code{list of lists}) of source and target node pairs}

\item{edgeType}{The type of interaction. Default is 'interacts with'.}

\item{directed}{\code{boolean} for whether interactions are directed. Default is \code{FALSE}.}

\item{network}{(optional) Name or SUID of the network. Default is the "current" network active in Cytoscape.}

\item{base.url}{(optional) Ignore unless you need to specify a custom domain,
port or version to connect to the CyREST API. Default is http://localhost:1234
and the latest version of the CyREST API supported by this version of RCy3.}
}
\value{
A \code{list} of \code{named lists} of SUID, source and target for each edge added.
}
\description{
Add one or more edges to a Cytoscape network by listing source and 
target node pairs.
}
\examples{
\donttest{
addCyEdges(c('sourceNode','targetNode'))
addCyEdges(list(c('s1','t1'),c('s2','t2')))
}
}
