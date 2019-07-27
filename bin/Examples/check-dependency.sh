#!/bin/bash

if command -v nodejs >/dev/null 2>&1 ; then
    echo "nodejs found"
    echo "version: $(nodejs -v)"
else
    echo "nodejs not found"
fi




if command -v highlight >/dev/null 2>&1 ; then
    echo "highlight found"
    echo "version: $(highlight --version)"
else
    echo "highlight not found"
fi
