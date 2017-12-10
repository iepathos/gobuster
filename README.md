# docker-gobuster

# build gobuster docker image

````shell
./build.sh
````


# run gobuster

````shell
./gobuster.sh -m dns -u example.com -t 100 -fw
````


# adjusting wordlists

any wordslist text file in words/ is combined by merge_words.sh into subdomains.txt and then baked into the gobuster docker image at /subdomains.txt.  Add or remove desired words lists from words/ and then ./build.sh to rebuild gobuster with the new subdomains.txt.