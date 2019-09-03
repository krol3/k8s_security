REPOSITORY=krol
NAME=counter_web
VERSION=1.0

build:
	docker build . -t ${REPOSITORY}/${NAME}:${VERSION}

push:
	docker push ${REPOSITORY}/${NAME}:{VERSION}

up:
	docker-compose up