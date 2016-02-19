#!/bin/bash
home=$(cd $(dirname $0); /bin/pwd)
version=$(cat $home/version.txt)
tag=$(cat $home/tag.txt)

# Run it through bash to make bash PID 1. See https://github.com/edevil/docker-erlang-bug#explanation
# for what's going on. The 1>&1 apparently forces Bash to fork-before-exec, trick stolen
# from https://github.com/elixir-lang/elixir/issues/3342
docker run --rm -v $(pwd):$(pwd) -w $(pwd) $tag:$version bash -c "mix release.clean 1>&1"
docker run --rm -v $(pwd):$(pwd) -w $(pwd) $tag:$version bash -c "mix release 1>&1"
