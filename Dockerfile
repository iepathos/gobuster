FROM ubuntu:latest
MAINTAINER Glen Baker <iepathos@gmail.com>

RUN apt-get -y update && \
    apt-get -y dist-upgrade
RUN apt-get install -y curl git tofrodos

# Install GOLANG and GOBUSTER. The directory after github.com (subscan in this case) can be named to anything
RUN curl -O https://storage.googleapis.com/golang/go1.8.linux-amd64.tar.gz && \
	tar -xvf go1.8.linux-amd64.tar.gz && \
	mv go /usr/local && \
	export PATH=$PATH:/usr/local/go/bin && \
	mkdir $HOME/work && \
	export GOPATH=$HOME/work && \
	mkdir -p $GOPATH/src/github.com/subscan/ && \
	cd $GOPATH/src/github.com/subscan/ && \
	git clone https://github.com/OJ/gobuster.git && \
	cd gobuster && \
	go get && go build && \
	go install

ADD subdomains.txt subdomains.txt
ENTRYPOINT ["/root/work/bin/gobuster"]
CMD ["-h"]