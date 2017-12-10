# docker-gobuster

# build gobuster docker image

````shell
./build.sh
````


# run gobuster
finalLOC=/data/subnames.txt
/root/work/bin/gobuster -m dns -u $TARGETS -w $finalLOC -t 100 -fw > /tmp/gobuster.txt

````shell
./gobuster.sh -m dns -u example.com -t 100 -fw
````