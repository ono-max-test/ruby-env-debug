def pipeline(name, arch):
  return {
    "kind": "pipeline",
    "type": "docker",
    "name": name,
    "platform": {
      "os": "linux",
      "arch": arch,
    },
    "steps": [
      {
        "name": "test",
        "image": "ruby:2.5-stretch",
        "commands": [
          "uname -m",
          "apt-get -yq install software-properties-common",
          "apt-get -yq install bison sudo",
        ]
      }
    ],
    # "trigger": {
    #   "branch": [
    #     "master"
    #   ]
    # }
  }

def main(ctx):
  return [
    pipeline("arm64", "arm64"),
    pipeline("arm32", "arm")
  ]
