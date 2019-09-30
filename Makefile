.PHONY: pytest-docker sphinx-docker

all: pytest-docker sphinx-docker

pytest-docker: pytest-docker/Dockerfile
	cp -rf conf/etc/apt/ pytest-docker/fsroot/etc/
	cp -rf conf/root/.pip/ pytest-docker/fsroot/root/
	cd pytest-docker && sudo docker build -t qtile-docker:1.0 .

sphinx-docker: sphinx-docker/Dockerfile
	cp -rf conf/root/.pip/ sphinx-docker/fsroot/root/
	cd sphinx-docker && sudo docker build -t qtile-sphinx-docker:1.0 .
