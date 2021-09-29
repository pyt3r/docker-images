IMAGE=pyt3r/base
CONTAINER=${IMAGE}-container
DOCKER_TEST_PATH=/test.sh


build:
	docker build --tag ${IMAGE} .


run-bash:
	docker run \
 		--name ${CONTAINER} \
 		-it ${IMAGE} /bin/bash

