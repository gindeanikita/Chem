\name{ImportSDF}
\alias{ImportSDF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Import multiple SDF or mol files
}
\description{Import multiple SDF or mol files using read.SDFset() function from
ChemmineR package.}
\usage{
ImportSDF(origin, sdftype, files)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{origin}{Which type of data you want to import. Set "directory" for
  active working directory or "list" for a list of files specified in files item.
  Notice that in both cases files must be in the active working directory,
  otherwise you should change the working directory by using setwd() function.}
  \item{sdftype}{How sdf file has the information? "str" for string and "set"
  for STR set.}
  \item{files}{Only when origin = "list". Set a list of files to import by
  using c() function or importing a vector.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
  dfSDFImport_List <- Chem::ImportSDF("list", "str",
                                   c("myfile01_01.sdf", "myfile02_02.sdf",
                                     "myfile03_03.sdf", "myfile04_04.sdf"))

  dfSDFImport_setwd <- Chem::ImportSDF("directory", "set")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory (show via RShowDoc("KEYWORDS")):
% \keyword{ ~kwd1 }
% \keyword{ ~kwd2 }
% Use only one keyword per line.
% For non-standard keywords, use \concept instead of \keyword:
% \concept{ ~cpt1 }
% \concept{ ~cpt2 }
% Use only one concept per line.
