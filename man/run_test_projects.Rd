% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Testproject_Functions.R
\name{run_test_projects}
\alias{run_test_projects}
\title{Run test projects}
\usage{
run_test_projects(dir_tests, dir_prj_tests = NULL, dir_ref = NULL,
  dir_prev = NULL, which_tests_torun = seq_along(dir_tests),
  delete_output = FALSE, force_delete_output = FALSE,
  make_new_ref = FALSE, write_report_to_disk = TRUE, verbose = FALSE)
}
\arguments{
\item{dir_tests}{A vector of character strings. Paths to individual test
projects.}

\item{dir_prj_tests}{A character string. Path to overall test projects
folder.}

\item{dir_ref}{A character string. Path to folder with reference database.}

\item{dir_prev}{A character string. Paths to directory that should be set
when function returns.}

\item{which_tests_torun}{An integer vector. Indices of \code{dir_tests} which
will be carried out.}

\item{delete_output}{A logical value. If \code{TRUE} then output will be
deleted unless problems showed up.}

\item{force_delete_output}{A logical value. If \code{TRUE} then output will
be deleted even if problems showed up.}

\item{make_new_ref}{A logical value. If \code{TRUE} then output database will
be saved as new reference.}

\item{write_report_to_disk}{A logical value. If \code{TRUE} then report of
differences against reference databases is written to disk.}

\item{verbose}{A logical value.}
}
\value{
A list with two elements: \describe{
  \item{res}{A data.frame where each row represents the outcomes of a
    test project. The columns return elapsed time in seconds
    \code{elapsed_s}, four logical values \code{has_run},
    \code{has_problems}, \code{made_new_refs}, \code{deleted_output}, and
    one character string \code{referenceDB} of the reference database name
    against which this run of the test project was compared.}
  \item{report}{A character vector describing differences between
    test and reference databases including the output of a call to
    \code{\link{compare_test_output}}}
  }
}
\description{
Run test projects
}
