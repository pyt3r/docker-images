base : ubuntu docker image
===============================================

Features
################

This is the source code for the public docker image published on the docker hub:

* https://hub.docker.com/r/pyt3r/base


The image serves as the base image in the construction of the larger docker images
in this repository.


Prerequisites
################

* docker
* Unix



Installation
################

The published image may be installed directly from docker hub as follows::

    $ docker pull pyt3r/base



Alternately, to build and test the image locally, the following commands may be used::

    $ make build

    $ make test

