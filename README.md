# Application

[![Go](https://img.shields.io/github/go-mod/go-version/tibia-oce/migrate)](https://golang.org/doc/go1.16)
![GitHub repo size](https://img.shields.io/github/repo-size/tibia-oce/migrate)

[![GitHub pull request](https://img.shields.io/github/issues-pr/tibia-oce/migrate)](https://github.com/tibia-oce/migrate/pulls)
[![GitHub issues](https://img.shields.io/github/issues/tibia-oce/migrate)](https://github.com/tibia-oce/migrate/issues)


## Project

Batch job container for managing BlackTek server and MyAAC MariaDB migrations, as part of the [GitOps workflow with Flux](https://github.com/tibia-oce/oci/tree/main/kubernetes/apps/mariadb).

## Builds
| Platform       | Build        |
| :------------- | :----------: |
| MacOS          | [![MacOS Build](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-macos.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-macos.yml)   |
| Ubuntu         | [![Ubuntu Build](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-ubuntu.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-ubuntu.yml) |
| Windows        | [![Windows Build](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-windows.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-windows.yml) |

[![Workflow](https://github.com/tibia-oce/migrate/actions/workflows/ci-multiplat-release.yml/badge.svg)](https://github.com/tibia-oce/migrate/actions/workflows/ci-multiplat-release.yml)

### Getting **Started**

To run it, simply download the latest release and define your environment variables in a '.env' file.

**Enviroment Variables**

|       NAME          |            HOW TO USE                |
| :------------------ | :----------------------------------  |
|`MYSQL_DBNAME`       | `database default database name`     |
|`MYSQL_HOST`         | `database host`                      |
|`MYSQL_PORT`         | `database port`                      |
|`MYSQL_PASS`         | `database password`                  |
|`MYSQL_USER`         | `database username`                  |
|`ENV_LOG_LEVEL`      | `logrus log level for verbose` [ref](https://pkg.go.dev/github.com/sirupsen/logrus#Level)   |

**Tests**  
`go test ./tests -v`

**Build**  
`RUN go build -o TARGET_NAME ./src/`

## Docker
`docker pull tibia-oce/migrate:latest`<br><br>
[![Automation](https://img.shields.io/docker/cloud/automated/tibia-oce/migrate)](https://hub.docker.com/r/tibia-oce/migrate)
[![Image Size](https://img.shields.io/docker/image-size/tibia-oce/migrate)](https://hub.docker.com/r/tibia-oce/migrate/tags?page=1&ordering=last_updated)
![Pulls](https://img.shields.io/docker/pulls/tibia-oce/migrate)
[![Build](https://img.shields.io/docker/cloud/build/tibia-oce/migrate)](https://hub.docker.com/r/tibia-oce/migrate/builds)
