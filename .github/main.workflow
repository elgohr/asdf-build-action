workflow "Test" {
  on = "push"
  resolves = ["test"]
}

action "test" {
  uses = "actions/docker/cli@master"
  args = "build ."
}
