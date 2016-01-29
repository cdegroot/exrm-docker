#!/bin/bash
home=$(cd $(dirname $0); /bin/pwd)
version=$(cat $home/version.txt)
tag=$(cat $home/tag.txt)

docker run -i -t --rm -v $(pwd):$(pwd) -w $(pwd) $tag:$version mix release.clean
docker run -i -t --rm -v $(pwd):$(pwd) -w $(pwd) $tag:$version mix release
