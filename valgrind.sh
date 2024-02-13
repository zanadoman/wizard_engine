#!/bin/bash

source /etc/profile.d/debuginfod.sh
cd test/build && valgrind ./bin.out