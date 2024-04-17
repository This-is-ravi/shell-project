#!/bin/bash

USERID = $(ID -U)
if [$USERID -ne 0]
then 
   echo"please run the this script with root user"