#!/usr/bin/env bash
#
# Fontmake from pip and pip exists
# Copyright (C) 2017 James T. Lee
#
# This software may be modified and distributed under the terms
# of the MIT license.  See the LICENSE file for details.
#
# When FONTMAKE='pip', configure should check that pip exists.  If it does,
# then FONTMAKE is re-set to a path that make knows how to resolve with pip.
#

# Include a set of common test functions
source "$HELPERS"

# Establish expectations
expected_fontmake='deps/bin/fontmake'

# Perform the action under test
export FONTMAKE='pip'
export PIP='true'
configure

# Read the results
source "$RESULTS"

# Validate the expectations
[[ $FONTMAKE == $expected_fontmake ]]
