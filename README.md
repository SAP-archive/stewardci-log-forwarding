[![REUSE status](https://api.reuse.software/badge/github.com/SAP/stewardci-log-forwarding)](https://api.reuse.software/info/github.com/SAP/stewardci-log-forwarding)
![](https://img.shields.io/badge/STATUS-NOT%20CURRENTLY%20MAINTAINED-red.svg?longCache=true&style=flat)

# Important Notice
This public repository is read-only and no longer maintained.

# Log forwarding for project "Steward"

## Description

This repository provides a log forwarding implementation for [project "Steward"](https://github.com/SAP/stewardci-core).

Currently it consists of a container image with Fluentd and plug-ins only.

## Requirements

- Docker

## Download and Installation

To build and test from sources execute the following steps:

1.  Create a Fluentd configuration file according to your needs:

        <local_config_dir>/
         +- fluent.conf
         +- ...

2.  Build:

    ```sh
    docker build -t stewardci-log-forwarding-local
    ```

3. Run Fluentd:

    ```sh
    docker run -it -v "<local_config_dir>:/myconfig" stewardci-log-forwarding-local -c /myconfig/fluent.conf
    ```

## Known Issues

no issues known

## How to obtain support

Please create issues on this repository to contact us.
