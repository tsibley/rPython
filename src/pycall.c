#include <Python.h>
#include <string.h>

void py_init(){
    Py_Initialize();
    PyRun_SimpleString("import json");
}

void py_close(){
    Py_Finalize();
}


void py_exec_code(const char** code, int* exit_status )
{
    /**exit_code = PyRun_SimpleString(*code); */
     *exit_status = PyRun_SimpleString(*code); 
}

/*void exec_pycode(const char** code, int* exit_code, char** resultado ) */
void py_get_var( const char** var_name, int* found, char** resultado )
{

    *found = 0;

    PyObject * module     = PyImport_AddModule("__main__");
    PyObject * dictionary = PyModule_GetDict(module);
    PyObject * result     = PyDict_GetItemString(dictionary, *var_name );

    if( result == NULL ){
        *found = 1;
        *resultado = "";
        return;
    }

    *resultado = PyString_AS_STRING(result);
}
