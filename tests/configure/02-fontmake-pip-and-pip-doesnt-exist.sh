#!/usr/bin/env bash
#
# Fontmake from pip and pip Doesn't Exist
# Copyright (C) 2017 James T. Lee
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
# When FONTMAKE='pip', configure should check that pip exists.  If it doesn't,
# then configure should fail.
#

# Include a set of common test functions
source "$HELPERS"

# Establish expectations
expected_fontmake='deps/bin/fontmake'

# Perform the action under test
export FONTMAKE='pip'
export PIP='does_not_exist'
configure

# Read the results
source "$RESULTS"

# Validate the expectations
[[ $CONFIGURE_STATUS != 0 ]] && grep 'could not find pip' config.log
