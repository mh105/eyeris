% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/detrend.R
\name{detrend}
\alias{detrend}
\title{Detrend the pupil time series}
\usage{
detrend(eyeris)
}
\arguments{
\item{eyeris}{An object of class \code{eyeris} dervived from \code{\link[=load]{load()}}.}
}
\value{
An \code{eyeris} object with a new column in \code{timeseries}:
\code{pupil_detrend}.
}
\description{
Linearly detrend_pupil data by fitting a linear model of \code{pupil_data ~ time},
and return the residuals (\code{pupil_data - fitted_values}).
}
\examples{
\dontrun{
system.file("extdata", "assocret.asc", package = "eyeris") |>
  eyeris::load() |>
  eyeris::deblink(extend = 50) |>
  eyeris::detransient() |>
  eyeris::interpolate() |>
  eyeris::detrend()
}

}
