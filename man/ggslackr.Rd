% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg_slackr.R
\name{ggslackr}
\alias{ggslackr}
\title{Post a ggplot to a Slack channel}
\usage{
ggslackr(
  plot = ggplot2::last_plot(),
  channels = Sys.getenv("SLACK_CHANNEL"),
  token = Sys.getenv("SLACK_TOKEN"),
  file = "ggplot.png",
  initial_comment = NULL,
  thread_ts = NULL,
  title = NULL,
  ...
)
}
\arguments{
\item{plot}{ggplot object to save, defaults to last plot displayed.}

\item{channels}{Comma-separated list of channel names or IDs where the file will be shared.}

\item{token}{Authentication token bearing required scopes.}

\item{file}{Prefix for filenames (defaults to \code{ggplot}).}

\item{initial_comment}{The message text introducing the file in specified channels.}

\item{thread_ts}{Provide another message's ts value to upload this file as a reply. Never use a reply's ts value; use its parent instead.}

\item{title}{Title of file.}

\item{\dots}{other arguments passed to \link[ggplot2]{ggsave}}
}
\value{
\code{httr} response object (invisibly)
}
\description{
Unlike the \code{\link[=slackr_dev]{slackr_dev()}} function, this one takes a \code{ggplot} object,
eliminating the need to have a graphics device (think use in scripts).
}
\examples{
\dontrun{
slackr_setup()
ggslackr(qplot(mpg, wt, data = mtcars))
}
}
