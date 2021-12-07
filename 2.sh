#!/bin/bash

tr -s '\n' '\n' < $1 > slv
mv slv $1
