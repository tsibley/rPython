\name{python.exec}
\alias{python.exec}
\title{ python.exec }
\description{
  Executes python code via the Jython interpreter
}
\usage{
  python.exec( python.code, get.exception = TRUE )
}
\arguments{
  \item{python.code}{ a character vector containing python code, typically containing a single line with indentation and EOL characters as required by Python syntax }
  \item{get.exception}{ logical value indicating whether to check or not for exceptions in Python }
}
\details{
    This function runs Python code.
    It needs to be provided by the caller in a character vector.

    The vector may consists of a single string with EOL and indentation characters embedded.

    Alternatively, it can be a character vector, each entry containing one or more lines of python code.

    The \code{get.exception} option allows the user to disregard Python exceptions in cases where safe calls to avoid the overhead of checking for them.
}
\value{
    None.
    If the code produces some output, it is up to the caller to go and fetch if from Jython.
}

\examples{

a <- 1:4
b <- 5:8
python.exec( c( "def concat(a,b):", "\treturn a+b" ) )
python.call( "concat", a, b)


}

\keyword{ manip }

