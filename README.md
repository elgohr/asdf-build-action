# ASDF-build-action
Uses [ASDF](https://github.com/asdf-vm/asdf) to provide a configurable build environment for Github Actions.

## Supported environments
As there are many [plugins for ASDF](https://asdf-vm.com/#/plugins-all?id=plugin-list) and I don't want to pollute the action right away, at the moment there are the following supported environments:

- go
- java
- kotlin
- nodejs
- yarn

In case that you need another environment, please open a PR.

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
    ENVIRONMENT = "go"
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
