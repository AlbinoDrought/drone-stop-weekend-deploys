# drone-stop-weekend-deploys
[![drone-bitbucket-artifacts on Docker Hub](https://img.shields.io/docker/automated/albinodrought/drone-stop-weekend-deploys.svg)](https://hub.docker.com/r/albinodrought/drone-stop-weekend-deploys/)
[![Docker Pulls](https://img.shields.io/docker/pulls/albinodrought/drone-stop-weekend-deploys.svg)](https://hub.docker.com/r/albinodrought/drone-stop-weekend-deploys)

This is a Bash [Drone](https://github.com/drone/drone) plugin to prevent weekend deploys. If the day is Friday, Saturday, or Sunday, the container will exit with a non-zero exit code.

## Docker
Build the docker image by running:

```bash
docker build --rm=true -t albinodrought/drone-stop-weekend-deploys .
```

## Usage
To perform a check, execute the following:

```bash
docker run --rm albinodrought/drone-bitbucket-artifacts
```

## Drone usage

```yml
pipeline:
  stop-weekend-deploys:
    image: albinodrought/drone-stop-weekend-deploys
    when:
      branch: release/v*

  deploy:
    image: your-regular-deploy-step-here
    when:
      branch: release/v*
```

