WARNING: PRETTY UNSTABLE
========================
I'm honeslty not sure of the state of this right now but it is a decent start at an image to run locally and be able to run your test suites w/o having to hit your CI server.  This requires running selenium xvfb and installing some font packages.  Stay tuned for updates.

Python Workflow
==========

Base Python image forked from [stackbrew/ubuntu:trusty](https://hub.docker.com/r/stackbrew/ubuntu/), paired with different layers to aid in development and testing.  The goal is to remove any and all impedements for getting python apps to run, whether its on staging, production or locally.

It Comes With...
================

*Base Image*
* python3.4
* python3.4-dev
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

Pre-Reqs
========
* Docker Toolbelt
** [Docker](https://docs.docker.com/installation/)
** [Docker Machine](https://docs.docker.com/machine/install-machine/)
** [Docker Compose](https://docs.docker.com/compose/install/)
* (if not on linux) [Virtualbox](https://www.virtualbox.org/wiki/Downloads) or [VMware Fusion](http://www.vmware.com/products/fusion)

Quick Start (Django)
====================
    git clone git@github.com:derek-adair/python-workflow.git
    cd frameworks/django && docker-compose up

Future Improvements
===================
* (possible) removal of virtualenv
* More versions of Python
* Likely adoption of a configuration manager ([Ansible](http://www.ansible.com/) or [Chef](https://www.chef.io/) are leading candidates, maybe both)
