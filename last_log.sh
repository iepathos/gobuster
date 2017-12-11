#!/bin/bash

container=$(docker ps -a | grep gobuster |  head -n 1 | awk '{ print $12 }')
docker logs $container
