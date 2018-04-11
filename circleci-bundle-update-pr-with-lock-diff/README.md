# circleci-bundle-update-pr-with-lock-diff runner

Using this image, to be easily to execute [circleci-bundle-update-pr](https://github.com/masutaka/circleci-bundle-update-pr) and [lock_diff](https://github.com/vividmuimui/lock_diff) command.

## required ENV

Set environment vars on your CircleCI's project:

```
GIT_USER_NAME=***yourname***
GIT_USER_EMAIL=***admin@example.com***
GITHUB_ACCESS_TOKEN=***YOUR_TOKEN***
```

## Usage

#### Job

```yaml
bundle-update-pr-job:
  docker:
    image: yhirano55/circleci-bundle-update-pr-with-lock-diff:latest
  working_directory: ~/myapp
  steps:
    - checkout
    - run:
        command: build
        working_directory: subdir
```

#### Workflow

```yaml
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
