#!/bin/bash

echo "give 5 names"
read -a NAMES

echo ${NAMES[$@]}