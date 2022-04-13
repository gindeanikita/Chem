\name{distanceCalculator}
\alias{distanceCalculator}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{Calculate the distance between chemical structures by their fingerprints.
}
\description{
This function calculates the distance between chemical structures by their
fingerprints using fingerprint types like MACCS or FP2 and distance calculation 
by methods like tanimoto.
}
\usage{
distanceCalculator(chName, chStr, calcMethod)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chName}{Vector of chemical structures name. Must be generated with c() 
  function.}
  \item{chStr}{Vector of chemical structures representation strings (e.g. InChI, 
  SMILES, InChIKey...).}
  \item{calcMethod}{Method used to calculate the distance (e.g. Tanimoto)}
%%     ~~Describe \code{x} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
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
chName <- c("methotrexate", "aspirin", "aminopterin", "pralatrexate",
            "methyl salicylate", "ethyl salicylate")
chStr <- c("InChI=1S/C20H22N8O5/c1-28(9-11-8-23-17-15(24-11)16(21)26-20(22)27-17)12-4-2-10(3-5-12)18(31)25-13(19(32)33)6-7-14(29)30/h2-5,8,13H,6-7,9H2,1H3,(H,25,31)(H,29,30)(H,32,33)(H4,21,22,23,26,27)/t13-/m0/s1",
           "InChI=1S/C9H8O4/c1-6(10)13-8-5-3-2-4-7(8)9(11)12/h2-5H,1H3,(H,11,12)",
           "InChI=1S/C19H20N8O5/c20-15-14-16(27-19(21)26-15)23-8-11(24-14)7-22-10-3-1-9(2-4-10)17(30)25-12(18(31)32)5-6-13(28)29/h1-4,8,12,22H,5-7H2,(H,25,30)(H,28,29)(H,31,32)(H4,20,21,23,26,27)/t12-/m0/s1",
           "InChI=1S/C23H23N7O5/c1-2-3-14(10-15-11-26-20-18(27-15)19(24)29-23(25)30-20)12-4-6-13(7-5-12)21(33)28-16(22(34)35)8-9-17(31)32/h1,4-7,11,14,16H,3,8-10H2,(H,28,33)(H,31,32)(H,34,35)(H4,24,25,26,29,30)/t14?,16-/m0/s1",
           "InChI=1S/C8H8O3/c1-11-8(10)6-4-2-3-5-7(6)9/h2-5,9H,1H3",
           "InChI=1S/C9H10O3/c1-2-12-9(11)7-5-3-4-6-8(7)10/h3-6,10H,2H2,1H3")
calcMethod = "tanimoto"

distanceCalculator(chName, chStr, calcMethod)

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
