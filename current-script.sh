#!bin/bash

course="devops from current project" # give some variable to cource

echo "before calling other script, course: $course"
echo "process id of current shell script: $$" #just printing this variables

./other-script.sh  #now call other script

echo "after calling other script, course: $course"
