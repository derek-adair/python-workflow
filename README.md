Making efforts to stabilize
========================
I've taken inventory over the last day or so and things are starting to stabilize a bit more.  I've lovingly stolen the base images here from the official python repository because I am making an effort to make this image as small as possible.  It should be known that I am still learning how to do this, so... just be this repository is still unstable.

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

*Python-2.7 version*
Some apps are STILL (/sigh) using 2.7 python.  As I am not planning on supporting specific sub versions of 2.7, this one should do just fine.

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
* ~~(possible) removal of virtualenv~~: no longer using it, but its still installed.
* ~~More versions of Python~~ focusing on 
* ([Ansible](http://www.ansible.com/) playbook.  This would be used to bootstrap docker hosts and even have playbooks for managing applications that use this image
