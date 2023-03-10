% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mapaclust.R
\name{mapaclust}
\alias{mapaclust}
\title{Interactive map showing clusters location.}
\usage{
mapaclust(
  Dataclust,
  crsprj = 4326,
  Area,
  Geology,
  Faults,
  mapout = FALSE,
  shp_field,
  Filename
)
}
\arguments{
\item{Dataclust}{is a matrix that contains the hydrochemical composition of water samples and the assigned cluster using the \code{\link{waterclust}} function.
ID, long, lat, source, Mg, Ca, Na,K,HCO3, Cl,SO4,NO3,NO2,Fe. All concentrations are in meq/l.
Aditional chemical compounds must be added in columns after the Fe column concentration.}

\item{crsprj}{is the coordinate reference system (CRS) of an object. Default value is EPSG 4326 for Coordenadas Geográficas WGS84.}

\item{Area}{is a shape with the area of interest.}

\item{Geology}{is a shape with the geology of the area of interest.}

\item{Faults}{is a shape with the faults of the area of interest.}

\item{mapout}{whether to render the map in the browser (TRUE) or the RStudio viewer (FALSE).}

\item{shp_field}{is a character varible indicating the shape field name that contains the geological description to show in the map.}

\item{Filename}{is a character varible to assign the file name to save the interactive map in HTML format.}
}
\value{
Create a dynamic map showing the geographical distribution of water sample clusters.

create a dynamic map showing the geographical distribution of water sample clusters.
}
\description{
This function generates an interactive map of zone showing the samples location and cluster classification using the Compositional Data (CoDA) approach for the data treatment and a clr trasnformation \cite{(Aitchison, 1982)}.
}
\details{
This function requires the matrix with the hydrochemical composition of water samples and cluster classification obtained using the \code{\link{waterclust}} function.
}
\examples{
data(geological_units, faults, Area_data, Dataclust)
Fig_map <- mapaclust(Dataclust, crsprj = 4326, Area = Area_data, 
                 Geology = geological_units, Faults =faults, mapout = TRUE, 
                 shp_field = "SimboloUC", Filename = NULL)
Fig_map
}
\references{
Aitchison, J. (1982). The Statistical Analysis of Compositional Data. Journal of the Royal Statistical Society. Series B (Methodological), 44(2), 139–177.
}
\author{
Adriana Piña \href{mailto:appinaf@unal.edu.co}{appinaf@unal.edu.co}\cr
David Zamora \href{mailto:dazamoraa@unal.edu.co}{dazamoraa@unal.edu.co} \cr
}
