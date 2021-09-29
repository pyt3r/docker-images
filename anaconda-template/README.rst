anaconda-template : docker + anaconda + python
===============================================

Features
################

This is the source code for the public docker image published on the docker hub:

* https://hub.docker.com/r/pyt3r/anaconda-template


The image comes equipped with miniconda along with the following template python package
and serves as a boilerplate for constructing larger docker images with many python dependencies:

* https://github.com/pyt3r/template-package


Prerequisites
################

* docker
* Unix



Installation
################

The published image may be installed directly from docker hub as follows::

    $ docker pull pyt3r/anaconda-template:0.0



Alternately, to build and test the image locally, the following commands may be used::

    $ make build

    $ make test

