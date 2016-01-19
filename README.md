Memcached Docker Image
======================

This repository contains Dockerfile to run Memcached-1.4 under OpenShift v3.

Configuring
-----------

The following environment variables are available to configure your memcached instance:

* MEMCACHED_MAX_MEMORY: Max memory to use for items in megabytes
* MEMCACHED_MAX_CONNECTIONS: Max simultaneous connections

OpenShift
---------

Examples files are provided in order to use it on OpenShift.

* imageStream.yaml: edit it to point to the images on your registry
* template.yaml: this is a basic template to easily create memcached images

Running Locally
---------------

To build and run locally, execute:

    git clone https://github.com/getupcloud/memcached.git
    docker build -t memcached:getup .
    docker run -d memcached:getup
