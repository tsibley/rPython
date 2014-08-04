library(rPython)

python.assign("foo", list( "key" = c( "subkey" = 13, "anotherkey" = 42 ) ))
foo = python.get("foo")

stopifnot( length(names(foo)) == 1 )    # only one key
stopifnot( names(foo) == "key" )        # key is 'foo'

stopifnot( length(names(foo$key)) == 2 )                 # two subkeys
stopifnot( names(foo$key) == c("anotherkey", "subkey") ) # keys are 'anotherkey' and 'subkey'

stopifnot( foo$key["subkey"]     == 13 ) # got subkey value
stopifnot( foo$key["anotherkey"] == 42 ) # got anotherkey value
