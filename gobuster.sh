#!/bin/bash
docker rm gobuster > /dev/null
docker run -it --name gobuster -v subdomains.txt:/subdomains.txt gobuster -w /subdomains.txt $@