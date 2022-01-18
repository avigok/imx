#!/usr/bin/env sh

sudo apt-get install gawk wget git-core diffstat unzip texinfo gcc-multilib \
	build-essential chrpath socat cpio python python3 python3-pip \
	python3-pexpect xz-utils debianutils iputils-ping python3-git \
	python3-jinja2 libegl1-mesa libsdl1.2-dev pylint3 xterm rsync curl -y

if [ ! -d "~/bin" ]; then
	mkdir ~/bin
fi
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo

echo "export PATH=$PATH:~/bin" >> ~/.bashrc
