# ASDF-build-action
[![Actions Status](https://wdp9fww0r9.execute-api.us-west-2.amazonaws.com/production/badge/elgohr/asdf-build-action)](https://wdp9fww0r9.execute-api.us-west-2.amazonaws.com/production/results/elgohr/asdf-build-action)

Uses [ASDF](https://github.com/asdf-vm/asdf) to provide a configurable build environment for Github Actions.

## Supported environments

Please see https://github.com/asdf-vm/asdf-plugins for supported environments.
Furthermore take care, that some languages may have different identifiers (e.g. go is identified with golang).

## Usage

Example workflow
```
workflow "Run Go Tests" {
  resolves = ["Test"]
  on = "push"
}

action "Test" {
  uses = "elgohr/asdf-build-action@master"
  env = {
    ENVIRONMENT = "golang"
    VERSION     = "1.12"
  }
  args = "go test ./..."
}
```

### Known errors

```
gzip: stdin: not in gzip format
tar: Child returned status 1
tar: Error is not recoverable: exiting now
```
is ASDFs way to say, that the environment/version is not present.
