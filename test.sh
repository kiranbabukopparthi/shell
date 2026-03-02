#!/bin/bash

echo "give 5 names"
read {NAMES[$@]}

echo ${NAMES[$@]}