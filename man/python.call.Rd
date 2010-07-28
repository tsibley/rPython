\name{python.call}
\alias{python.call}
\alias{python.method.call}
\title{ python.call }
\description{
  Calls Python functions and methods from R 
}
\usage{
  python.call( py.foo, ... )
  python.method.call( py.object, py.method, ... )
}
\arguments{
  \item{py.foo}{ rame of a python function }
  \item{py.object}{ name of a python object }
  \item{py.method}{ name of a method of such object }
  \item{...}{ R objects to pass as arguments to the Python function or method }
}
\details{
    This function runs a python function taking as arguments R objects and returning an R object.
    Some limitations exist as to the nature of the objects that can be passed between R and Jython.
    As of this writing, atomic arguments and vectors are supported. 

    The user has to be careful to indicate named parameters as required according to python conventions.
}
\value{
    An R representation of the object returned by the call to the python function. 
}
\examples{
python.call( "len", 1:3 )
a <- 1:4
b <- 5:8
python.exec( "def concat(a,b): return a+b" )
python.call( "concat", a, b)

python.assign( "a",  "hola hola" )
python.method.call( "a", "split", " " )


}
\keyword{ manip }

