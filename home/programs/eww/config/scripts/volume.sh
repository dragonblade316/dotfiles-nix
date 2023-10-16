#!/bin/bash

# Check if the first argument is "up".
if [[ "$1" == "up" ]]; then
  # If it is, print "up".
  pamixer --increase 5
else
  # If it is not, print "down".
  pamixer --decrease 5
fi

