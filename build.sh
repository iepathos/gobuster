#!/bin/bash
docker volume create words
docker build . -t gobuster