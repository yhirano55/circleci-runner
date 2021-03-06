# ci-yarn-upgrade runner

Using this image, to be easily to execute [ci-yarn-upgrade](https://github.com/taichi/ci-yarn-upgrade) command.

## required ENV

Set environment vars on your CircleCI's project:

```
GIT_USER_NAME=***yourname***
GIT_USER_EMAIL=***admin@example.com***
GITHUB_ACCESS_TOKEN=***YOUR_TOKEN***
```

And **checkout SSH keys in your project**

## Usage

### Job

```
ci-yarn-upgrade-job:
  docker:
    image: yhirano55/ci-yarn-upgrade:8
  working_directory: ~/myapp
  steps:
    - checkout
    - run: build
```

Or your project is nested:
```
ci-yarn-upgrade-job:
  docker:
    image: yhirano55/ci-yarn-upgrade:8
  working_directory: ~/myapp
  steps:
    - checkout
    - run:
        command: build
        working_directory: target_repo
```

### Workflow

```
workflows:
  version: 2
  ci-yarn-upgrade-build:
    triggers:
      - schedule:
          cron: "0 0 * * *" # UTC 0:00 on everyday
          filters:
            branches:
              only:
                - master
    jobs:
      - ci-yarn-upgrade-job
```
