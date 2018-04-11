# circleci-bundle-update-pr runner

Using this image, to be easily to execute [circleci-bundle-update-pr](https://github.com/masutaka/circleci-bundle-update-pr) command.

## required ENV

Set environment vars on your CircleCI's project:

```
GIT_USER_NAME=***yourname***
GIT_USER_EMAIL=***admin@example.com***
GITHUB_ACCESS_TOKEN=***YOUR_TOKEN***
```

## Usage

### Job

```
bundle-update-pr-job:
  docker:
    image: yhirano55/circleci-bundle-update-pr:latest
  working_directory: ~/myapp
  steps:
    - checkout
    - run: build
```

Or if your project is nested, please use `circleci-bundle-update-pr-with-lock-diff` instead.

### Workflow

```
workflows:
  version: 2
  bundle-update-pr-build:
    triggers:
      - schedule:
          cron: "0 0 * * *" # UTC 0:00 on everyday
          filters:
            branches:
              only:
                - master
    jobs:
      - bundle-update-pr-job
```
