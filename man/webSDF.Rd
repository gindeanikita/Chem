\name{webSDF}
\alias{webSDF}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Import sdf string from an online source}
\description{The function imports sdf file information from online databases
like PubChem and ChemSpider.

NOTE: for the moment it only works for PubChem.}
\usage{webSDF(query, origin)}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{query}{Introduce the name of the molecule or other string that can be
  used to identify chemical structures in online databases.}
  \item{origin}{The source where sdf string is exported from (e.g. "pubchem",
  "chemspider"...).}
}
\details{
  The function needs a internet connection in order to search the chemical
  structure.
  Also needs access to ChemmineR package from BioConductor.
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
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
  SDFset <- webSDF("methotrexate", "pubchem")
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
