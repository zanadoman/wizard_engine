#!/bin/bash

source /etc/profile.d/debuginfod.sh
cd Build && valgrind --undef-value-errors=no ./bin.out