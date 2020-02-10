# Duing IDE for Cypress

Cypress IDE based on Duing Desktop

## Overview

Provide a [Duing](https://github.com/kairops/docker-ubuntu-xrdp-mate-custom/tree/master/duing) Integrated Development Environment to develop and execute Cypress E2E tests.

## Usage


Use the Ubuntu Desktop to design your BDD test suite (yes! You have a desktop in a container)

1. Start the `dide-cypress` container.

```console
$ docker run -dit --name dide-cypress \
           -p 3389:3389 \
           --shm-size 1g \
           --restart unless-stopped \
           teecke/dide-cypress
```

2. Access with a remote desktop client to localhost:3389 using `ubuntu` user and `ubuntu` password.

3. Start Visual Studio Codium and open the folder `/home/ubuntu/myproject` within it.

4. Develop your Cypress E2E test.

5. Open a terminal, go to the `/home/ubuntu/myproject` directory and open Cypress with `$(npm bin)/cypress open`

6. Execute your test.

## Build from scratch

TBD

## Contribute

You can [contribute](CONTRIBUTING.md) to the project following our [covenant code of conduct](CODE_OF_CONDUCT.md).
