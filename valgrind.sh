#!/bin/bash

source /etc/profile.d/debuginfod.sh && valgrind --leak-check=full $1
