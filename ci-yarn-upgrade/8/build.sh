#!/bin/bash
set -eux

~/.yarn/bin/ci-yarn-upgrade --execute --token ${GITHUB_ACCESS_TOKEN} --workingdir ${PWD}
