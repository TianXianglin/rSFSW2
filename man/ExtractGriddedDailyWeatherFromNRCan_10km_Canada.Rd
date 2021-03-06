% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WeatherDB.R
\name{ExtractGriddedDailyWeatherFromNRCan_10km_Canada}
\alias{ExtractGriddedDailyWeatherFromNRCan_10km_Canada}
\title{Extract gridded daily weather from NR Canada for Canadian sites}
\usage{
ExtractGriddedDailyWeatherFromNRCan_10km_Canada(dir_data, site_ids,
  site_ids_by_dbW, coords_WGS84, start_year, end_year,
  dir_temp = tempdir(), dbW_compression_type = "gzip", dbW_digits,
  verbose = FALSE)
}
\value{
An invisible zero. A list of which each element represents one year
  of daily weather data of class
  \code{\link[rSOILWAT2:swWeatherData-class]{rSOILWAT2::swWeatherData}}. The
  list is copied to the weather database. Units are [degree Celsius] for
  temperature and [cm / day] and for precipitation.
}
\description{
Data are available for years 1950-2013 at a 10-km resolution.
}
\references{
Hopkinson, R. F., D. W. McKenney, E. J. Milewska, M. F.
  Hutchinson, P. Papadopol, and L. A. Vincent. 2011. Impact of Aligning
  Climatological Day on Gridding Daily Maximum-Minimum Temperature and
  Precipitation over Canada. Journal of Applied Meteorology and Climatology
  50:1654-1665.

Hutchinson, M. F., D. W. McKenney, K. Lawrence, J. H. Pedlar, R.
  F. Hopkinson, E. Milewska, and P. Papadopol. 2009. Development and Testing
  of Canada-Wide Interpolated Spatial Models of Daily Minimum-Maximum
  Temperature and Precipitation for 1961-2003. Journal of Applied Meteorology
  and Climatology 48:725-741.

McKenney, D. W., M. F. Hutchinson, P. Papadopol, K. Lawrence, J.
  Pedlar, K. Campbell, E. Milewska, R. F. Hopkinson, D. Price, and T. Owen.
  2011. Customized Spatial Climate Models for North America. Bulletin of the
  American Meteorological Society 92:1611-1622.
}
