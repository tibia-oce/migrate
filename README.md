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
|`MARIADB_DATABASE`       | `database default database name`     |
|`MARIADB_HOST`         | `database host`                      |
|`MARIADB_PORT`         | `database port`                      |
|`MARIADB_ROOT_PASSWORD`         | `database password`                  |
|`MARIADB_USERNAME`         | `database username`                  |

**Tests**  
`go test ./tests -v`

**Build**  
`go build -o TARGET_NAME ./src/`

## Docker
`docker pull ghcr.io/tibia-oce/migrate:latest`
