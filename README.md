# RaBe S2I Base Minimal Image

The RaBe S2I Base Minimal Image resembles a classic [sclorg/s2i-base](https://github.com/sclorg/s2i-base-container)
image with the main difference being that it does not include `yum` since it is based on the RaBe UBI8 Minimal Image.
It's main use is as a downstream for RaBe S2I tooling.

The image is based on the [RaBe S2I Core Image](https://github.com/radiorabe/container-image-rabe-s2i-core-minimal)
which is in turn based on the [AlmaLinux 9 UBI9 variant image](https://github.com/AlmaLinux/docker-images)
container provided by AlmaLinux and based on the work from [Red Hat](https://catalog.redhat.com/software/containers/ubi9-minimal/61832888c0d15aff4912fe0d). It uses parts of the [Red Hat S2I Base Image](https://catalog.redhat.com/software/containers/ubi9/s2i-base/61fba02e153d30bcbfa96ef3).

## Features

- Based on RaBe Universal Base Image 8 Minimal
- Builds the base for RaBe S2I Images

## Usage

Create a downstream image from `ghcr.io/radiorabe/s2i-base`. Replace `:latest` with a specific version in the examples below.

```Dockerfile
FROM ghcr.io/radiorabe/s2i-base:latest AS build

RUN "hello world"
```

Preferably you should use a downstream base image for your needs.

## Downstream Base Images

* [RaBe S2I Python Image](https://github.com/radiorabe/container-image-rabe-s2i-python-minimal)

## Release Management

The CI/CD setup uses semantic commit messages following the [conventional commits standard](https://www.conventionalcommits.org/en/v1.0.0/).
There is a GitHub Action in [.github/workflows/semantic-release.yaml](./.github/workflows/semantic-release.yaml)
that uses [go-semantic-commit](https://go-semantic-release.xyz/) to create new
releases.

The commit message should be structured as follows:

```
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

The commit contains the following structural elements, to communicate intent to the consumers of your library:

1. **fix:** a commit of the type `fix` patches gets released with a PATCH version bump
1. **feat:** a commit of the type `feat` gets released as a MINOR version bump
1. **BREAKING CHANGE:** a commit that has a footer `BREAKING CHANGE:` gets released as a MAJOR version bump
1. types other than `fix:` and `feat:` are allowed and don't trigger a release

If a commit does not contain a conventional commit style message you can fix
it during the squash and merge operation on the PR.

## Build Process

The CI/CD setup uses the [Docker build-push Action](https://github.com/docker/build-push-action) to publish container images. This is managed in [.github/workflows/release.yaml](./.github/workflows/release.yaml).

## License

This application is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, version 3 of the License.

## Copyright

Copyright (c) 2022 [Radio Bern RaBe](http://www.rabe.ch)
