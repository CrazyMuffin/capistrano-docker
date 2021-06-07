# Capistrano Docker Image

## About
This image is pre-configured Capistrano [https://github.com/capistrano/capistrano]() built mainly for use with Symfony applications.

### List of preinstalled extensions

- capistrano
- capistrano-composer
- capistrano-copy-files
- capistrano-file-permissions
- capistrano-npm
- capistrano-safe-deploy-to
- capistrano-symfony -v 1
- slackistrano
- mail
- Sentry Client

## Usage

1. Use this image as a base image to run your pipeline in favourite pipeline provider configuration.
2. Put `cap <env> <command>` into the script part of the config
3. Make sure your pipeline executor has correct permissions to deploy to your servers (private keys, firewalls...)

### Bitbucket Pipelines
```
pipelines:
  branches:
    develop:
      - step:
            name: Deploy to Staging Environment
            image: crazymuffin/capistrano
            deployment: Staging
            script:
                - cap staging deploy
```

### GitLab Pipelines

```
deploy_staging:
  image: crazymuffin/capistrano
  environment: staging
  stage: deploy
  script:
    - cap staging deploy
  only:
    - develop
```
