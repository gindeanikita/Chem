\name{sdfAdjust}
\alias{sdfAdjust}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Adjust SDF or MOL files corresponding to OpenBabel standards
}
\description{
Adjust the format of SDF and MOL files in order they to correspond to OpenBabel
standards and be readable in ChemmineR, ChemmineOB and rcdk packages.
}
\usage{
sdfAdjust(sdfFile, origin, directory, saveNewFile, newFileName)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{sdfFile}{Name of the SDF or MOL file to read.}
  \item{origin}{By default "file". If is "file" sdfFile is a mol or sdf file
  located in a directory. If is "txt" then sdfFile is a vector of strings (e.g.
  readed from PubChem server...).}
  \item{directory}{By default is the active working directory given by getwd()
  function. Otherwise, indicate the file location with no final "/".}
  \item{saveNewFile}{By default is FALSE and do not saved the default file in
  the indicated directory.}
  \item{newFileName}{By default is "<sdfFile>_Adjusted.sdf".}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
Returns a SDF or MOL vector of strings which can be imported directly into
ChemmineR package through read.SDFset() or read.SDFstr().
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
