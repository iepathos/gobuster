#!/bin/bash
docker rm gobuster > /dev/null
docker run -it --name gobuster gobuster -w /subdomains.txt $@