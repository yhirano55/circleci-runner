#!/bin/bash
set -eux

gem update --system
gem update bundler --no-document
gem update circleci-bundle-update-pr --no-document

circleci-bundle-update-pr
