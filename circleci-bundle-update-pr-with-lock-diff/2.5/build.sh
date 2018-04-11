#!/bin/bash
set -eux

gem update --system
gem update bundler --no-document
gem update circleci-bundle-update-pr lock_diff --no-document

circleci-bundle-update-pr
lock_diff_for_tachikoma -r ${CIRCLE_PROJECT_USERNAME}/${CIRCLE_PROJECT_REPONAME} --post-comment=true
