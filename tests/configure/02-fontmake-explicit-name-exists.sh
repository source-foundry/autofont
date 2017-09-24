#!/usr/bin/env bash
#
# Fontmake Explicit Name Exists Test
# Copyright (C) 2017 James T. Lee
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
# When FONTMAKE='some_existent_command_name', configure should find it in the
# PATH and set the FONTMAKE variable to the full path name.
#

# Include a set of common test functions
source "$HELPERS"

# Establish expectations
expected_fontmake='/bin/true'

# Perform the action under test
export FONTMAKE='true'
configure

# Read the results
source "$RESULTS"

# Validate the expectations
[[ $FONTMAKE == $expected_fontmake ]]
