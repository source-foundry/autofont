#!/usr/bin/env bash
#
# Base Test
# Copyright (C) 2017 James T. Lee
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
# The configure script should run without environment variables or command line
# arguments and either run to completion, detecting requirements if they're
# available, or fail if the system requirements are not met.
#

# Include a set of common test functions
source "$HELPERS"

# Establish expectations
expected_fontmake="$(which fontmake)"

# Perform the action under test
configure

# Read the results
source "$RESULTS"

# Validate the expectations
if [[ $expected_fontmake ]]; then
    [[ $CONFIGURE_STATUS == 0 && $FONTMAKE == $expected_fontmake ]]
else
    [[ $CONFIGURE_STATUS != 0 ]] && grep 'could not find fontmake' config.log
fi
