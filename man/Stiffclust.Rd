% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Stiffclust.R
\name{Stiffclust}
\alias{Stiffclust}
\title{Representative Stiff Diagram for the cluster classification of hydrochemical water samples.}
\usage{
Stiffclust(Dataclust, plt)
}
\arguments{
\item{Dataclust}{is a matrix that contains the hydrochemical composition of water samples and the assigned cluster using the \code{\link{waterclust}} function. ID, long, lat, source, Mg, Ca, Na,K,HCO3, Cl,SO4,NO3,NO2,Fe. All concentrations are in meq/l.}

\item{plt}{is a logical value to indicate whether plot is diplayed}
}
\value{
Draws the representative CoDa Stiff Diagram for the cluster classification of hydrochemical water samples.

draws the representative CoDa Stiff Diagram for the cluster classification of hydrochemical water samples.
}
\description{
This function generates the representative CoDA Stiff Diagrams \cite{(Stiff, 1951)} using the mean chemical concentration of each cluster.
}
\examples{
data(Dataclust)
Fig_stiff <- Stiffclust(Dataclust, plt = TRUE)
}
\references{
Stiff, H. A. (1951). The Interpretation of Chemical Water Analysis by Means of Patterns. Journal of Petroleum Technology, 3(10), 15–3. <DOI: 10.2118/951376-G>
}
\author{
Adriana Piña \href{mailto:appinaf@unal.edu.co}{appinaf@unal.edu.co}\cr
David Zamora \href{mailto:dazamoraa@unal.edu.co}{dazamoraa@unal.edu.co} \cr
}
