# Application

[![Version](https://img.shields.io/github/v/release/tibia-oce/migrate)](https://github.com/tibia-oce/migrate/releases/latest)
[![Go](https://img.shields.io/github/go-mod/go-version/tibia-oce/migrate)](https://golang.org/doc/go1.16)
![GitHub repo size](https://img.shields.io/github/repo-size/tibia-oce/migrate)

[![GitHub pull request](https://img.shields.io/github/issues-pr/tibia-oce/migrate)](https://github.com/tibia-oce/migrate/pulls)
[![GitHub issues](https://img.shields.io/github/issues/tibia-oce/migrate)](https://github.com/tibia-oce/migrate/issues)


## Project

Describe your project **HERE**

## Builds
| Platform       | Build        |
| :------------- | :----------: |
| MacOS          | [![MacOS Build](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-macos.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-macos.yml)   |
| Ubuntu         | [![Ubuntu Build](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-ubuntu.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-ubuntu.yml) |
| Windows        | [![Windows Build](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-windows.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/ci-build-windows.yml) |

[![Workflow](https://github.com/tibia-oce/migrate/actions/workflows/ci-multiplat-release.yml/badge.svg)](https://github.com/tibia-oce/migrate/actions/workflows/ci-multiplat-release.yml)

### Getting **Started**

To run it, simply download the latest release and define your environment variables.
You can set environment type as `dev` if you want to use a `.env` file (store it in the same folder of your app).

You can also download our docker image and apply the environment variables to your container.

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
