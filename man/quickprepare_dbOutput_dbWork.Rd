% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Simulation_Project.R
\name{quickprepare_dbOutput_dbWork}
\alias{quickprepare_dbOutput_dbWork}
\title{Prepare output database without running proper steps of
\file{SFSW2_project_code.R}}
\usage{
quickprepare_dbOutput_dbWork(actions, path, SFSW2_prj_meta,
  verbose = FALSE)
}
\arguments{
\item{path}{A character string. The path at which the databases will be
created -- ignoring the path information from \code{SFSW2_prj_meta} used
otherwise.}
}
\value{
Invisibly the number of output fields in the overall aggregation
  table. Side effect: creation of \code{dbOutput} and \code{dbWork}.
}
\description{
The need may arise if all/some of input data of your simulation project is
located on a remote server and you want to create the output database and
work database locally. This function can be called before executing step 3
(\code{populate_rSFSW2_project_with_data}) in the demo code
\file{SFSW2_project_code.R}.
}
