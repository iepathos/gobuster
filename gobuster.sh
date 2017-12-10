#!/bin/bash

docker run -it -v words:/words gobuster -w /words/allwords.txt $@