# Custom alpine image

[![Build Status](https://ci.bueraner.de/api/badges/murdoc/alpine/status.svg)](https://ci.bueraner.de/murdoc/alpine)

## Table of Content

<!-- vim-markdown-toc GFM -->

* [Version](#version)
* [Packages](#packages)
* [Default shell](#default-shell)
* [Maintenance](#maintenance)
* [Mirror](#mirror)

<!-- vim-markdown-toc -->

## Version

* `Alpine Version 3.19`

## Packages

* bash
* curl
* git
* go
* lftp
* openssh
* rsync

Detailed package versions can be found in the [Dockerfile](Dockerfile).

## Default shell

Instead of the default shell `/bin/ash`, this image uses the bash `/bin/bash`
for the root user.

## Maintenance

All packages were maintained by renovatebot.

## Mirror

This repo is only a mirror from a private gitea instance.
