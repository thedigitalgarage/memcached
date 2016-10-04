Memcached Docker Image
======================

This repository contains Dockerfile to run Memcached under the Digital Garage.
Current memcached version is 1.4.25.

Configuring
-----------

The following environment variables are available to configure your memcached instance:

| Variable name | Description |
| :------------|-------------|
| `MEMCACHED_MAX_MEMORY` | Max memory to use for items in megabytes |
| `MEMCACHED_MAX_CONNECTIONS`| Max simultaneous connections |
| `MEMCACHED_EXTRA_PARAMETERS`| Extra command line parameters to pass to command `memcached`|
