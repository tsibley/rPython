#########################################################
# CGB, 20100707, created
#########################################################

python.assign <- function( var.name, value ){

    value <- toJSON( value )

    # Creating the call

    jython.command <- c( 
        paste( var.name , "='", value, "'",  sep = "" ),
        paste( var.name , "= json.loads(", var.name, ")", sep = "" )
    )

    jython.command <- paste( jython.command, collapse = "\n" )

    python.exec( jython.command )
    invisible( NULL )
}

