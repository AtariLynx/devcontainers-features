#!/bin/bash

# The 'test/_global' folder is a special test folder that is not tied to a single feature.
#
# This test file is executed against a running container constructed
# from the value of 'color_and_hello' in the tests/_global/scenarios.json file.
#
# The value of a scenarios element is any properties available in the 'devcontainer.json'.
# Scenarios are useful for testing specific options in a feature, or to test a combination of features.
# 
# This test can be run with the following command (from the root of this repo)
#    devcontainer features test --global-scenarios-only .

set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "Check lyxass installation" bash -c "lyxass | grep 'tjass/lyxass C-version'"
check "Check lynxenc installation" bash -c "lynxenc | grep 'usage: lynxenc <plaintext.bin> <encrypted.bin>'"
check "Check lynxdec installation" bash -c "lynxdec | grep 'usage: lynxdec <encrypted.bin> <plaintext.bin>'"
check "Check make_lnx installation" bash -c "make_lnx 2>&1 | grep 'Raw image to LNX image convertor V5'"

cd ${BLL_ROOT}/uBLL
check "Compile uBLL" bash -c "make | grep 'DONE: File converted'"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
