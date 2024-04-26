#!bin/bash

course="devops from current project" # give some variable to cource

echo "before calling other script, course: $course"
echo "process id of current shell script: $$" #just printing this variables

./other-script.sh          #1st way,now call other script
# source ./other-script.sh  #2nd way of calling

echo "after calling other script, course: $course"
