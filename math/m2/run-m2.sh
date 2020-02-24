#!/bin/bash

if [[ $(docker start M2) ]]; then
    docker logs --since 2s M2
    docker attach M2
else
    echo ""
    echo "Getting Macaulay2"
    docker run -it --name=M2 -v ~/M2:/home/m2user mikestillman/test-macaulay2-1.8.2-0 M2
    exit
fi

docker stop M2
