IMAGE=anaconda-template
CONTAINER=${IMAGE}-container
DOCKER_TEST_PATH=/test.sh


build:
	docker build --tag ${IMAGE} .

test:
	docker run \
 		--name ${CONTAINER} \
 		-it ${IMAGE} /bin/bash \
 		${DOCKER_TEST_PATH}
