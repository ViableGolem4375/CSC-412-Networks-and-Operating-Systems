#! /usr/bin/env bash

### call the build script to compile all c code
./build.sh ../fio/fio.c

### output to a text file using both programs
./readfile | ./linebreaker > output.text

### output to terminal using both programs
./readfile | ./linebreaker