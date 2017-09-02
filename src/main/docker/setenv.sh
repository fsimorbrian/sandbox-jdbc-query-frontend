#!/bin/bash

export JAVA_HOME=/usr/java/latest

resolve() {
    #
    # Check variable is set, exit with error if not, otherwise return value.
    # Params:
    # 1: string name of variable to check.
    # return: value of named variable
    # usage: NEWVAR=$(resolve VARNAME)
    #
    local CHECK=`echo $1`
    if [ -z ${!CHECK} ]; then echo "ERROR: env_var $CHECK value is required"; exit 1; fi

    echo ${!CHECK}
}


