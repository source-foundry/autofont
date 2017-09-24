#!/usr/bin/env bash
#
# Fontmake Explicit Path Not Exists Test
# Copyright (C) 2017 James T. Lee
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
# When FONTMAKE='/some/path/to/nonexistent/command', configure should fail.
#

# Include a set of common test functions
source "$HELPERS"

# Perform the action under test
export FONTMAKE='/usr/bin/this_command_doesnt_exist'
configure

# Read the results
source "$RESULTS"

# Validate the expectations
[[ $CONFIGURE_STATUS != 0 ]]
