[![Build Status](https://travis-ci.org/evermind/docker-geoserver-plugin-elasticgeo.svg?branch=master)](https://travis-ci.org/evermind/docker-geoserver-plugin-elasticgeo)

# Automated docker builds for elasticgeo geoserver plugin

This script is triggered daily via travis.ci. It scans https://github.com/ngageoint/elasticgeo/releases for current releases.
Then it checks docker hub if a tag for this release exists already. If not, a new docker image is built and pushed.

The docker image uses the same (semantic) versions as geoserver. There's no "latest" tag!

Available tags: https://hub.docker.com/r/evermind/geoserver-plugin-elasticgeo/tags

# Usage of the image

The image contains the plug-in in /libs/*.jar - copy it into geoserver's lib directory.

