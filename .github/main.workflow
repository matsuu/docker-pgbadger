workflow "Test workflow" {
  on = "push"
  resolves = ["docker test"]
}

action "docker test" {
  uses = "."
  args = "--help"
}
