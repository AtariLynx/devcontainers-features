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
check "Check cc65 is installed" bash -c "cc65 2>&1 | grep 'cc65: No input files'"
check "Check sprpck is installed" bash -c "sprpck | grep 'Lynx Sprite Packer Ver 2.4'"
check "Check make_lnx is installed" bash -c "make_lnx 2>&1 | grep 'Raw image to LNX image convertor V5'"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
