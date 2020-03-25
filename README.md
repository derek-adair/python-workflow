Python Workflow
==========

Base Python image forked from [stackbrew/ubuntu:trusty](https://hub.docker.com/r/stackbrew/ubuntu/), paired with different layers to aid in development and testing.  The goal is to remove any and all impedements for getting python apps to run, whether its on staging, production or locally.

It Comes With...
================

*Base Image*
* python3.5
* python3.5-dev
* python-pip
* git
* wget
* pip
* virtualenv

*Dev*
* libpq-dev (required for pyscopg2)
* xvfb (runs gui apps w/o a frame buffer, needed for funcitonal tests in firefox)
* firefox
* xfonts-100dpi/75dpi/scalable

# Python-2.7
No longer supporting python 2.  Come on dude...
