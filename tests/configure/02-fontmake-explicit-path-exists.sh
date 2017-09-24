#!/usr/bin/env bash
#
# Fontmake Explicit Path Exists Test
# Copyright (C) 2017 James T. Lee
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
# When FONTMAKE='/some/path/to/existent/command', configure should see that it
# exists and continue.
#

# Include a set of common test functions
source "$HELPERS"

# Establish expectations
expected_fontmake='/bin/true'

# Perform the action under test
export FONTMAKE='/bin/true'
configure

# Read the results
source "$RESULTS"

# Validate the expectations
[[ $FONTMAKE == $expected_fontmake ]]
