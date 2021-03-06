% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/WorkDatabase.R
\name{setup_dbWork}
\alias{setup_dbWork}
\title{Setup or connect to \var{SQLite}-database \code{dbWork} to manage runs of a
\pkg{rSFSW2} simulation project}
\usage{
setup_dbWork(path, sim_size, include_YN, resume = FALSE,
  SFSW2_prj_meta = NULL)
}
\arguments{
\item{path}{A character string. Path to the folder where the database will be
created.}

\item{resume}{A logical value. If \code{TRUE} and \code{dbWork} exists, then
function connects to the existing database. If \code{FALSE}, then a new
database is created (possibly overwriting an existing one).}

\item{SFSW2_prj_meta}{An environment. Required if \code{use_granular_control}
is set or if \code{sim_size} or \code{path} are missing. If passed as
argument and \code{resume} and \code{dbWork} exists, then
\code{\link{recreate_dbWork}} is called.}
}
\value{
A logical value indicating success/failure of setting up/connecting
  to \code{dbWork} and initializing with \code{runIDs}.
}
\description{
\code{dbWork} tracks completion of each \code{runID} with table \code{work},
i.e., an entire call to \code{\link{do_OneSite}}. If your project requires a
finer granularity of output management, then set the
\code{use_granular_control} in the project description and pass
\code{SFSW2_prj_meta}; in that case, the function calls
\code{\link{add_granular_dbWork}} to add the table \code{need_outputs} to
\code{dbWork}.
}
