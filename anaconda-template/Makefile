IMAGE=pyt3r/anaconda-template
CONTAINER=${IMAGE}-container
DOCKER_TEST_PATH=/test.sh


build:
	docker build --tag ${IMAGE} .

test:
	docker run \
 		--name ${CONTAINER} \
 		-it ${IMAGE} /bin/bash \
 		${DOCKER_TEST_PATH}

run-bash:
	docker run \
 		--name ${CONTAINER} \
 		-it ${IMAGE} /bin/bash

run-jupyter:
	docker run -i -t \
		-p 8888:8888 ${IMAGE}  \
		/bin/bash -c "/opt/conda/bin/conda install jupyter -y --quiet && mkdir /opt/notebooks && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"

rmi: # removes all dangling images (i.e. <none>:<none>)
	docker rmi $$(docker images -f "dangling=true" -q)

kill-all:
	docker container kill $$(docker ps -a -q)

remove-all:
	docker rm $$(docker ps -a -q);

remove-image:
	docker image remove ${IMAGE}
