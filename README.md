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
|`ENV_LOG_LEVEL`      | `logrus log level for verbose` [ref](https://pkg.go.dev/github.com/sirupsen/logrus#Level)   |

**Tests**  
`go test ./tests -v`

**Build**  
`go build -o TARGET_NAME ./src/`

## Docker
`docker pull tibia-oce/migrate:latest`<br><br>
[![Automation](https://img.shields.io/docker/cloud/automated/tibia-oce/migrate)](https://hub.docker.com/r/tibia-oce/migrate)
[![Image Size](https://img.shields.io/docker/image-size/tibia-oce/migrate)](https://hub.docker.com/r/tibia-oce/migrate/tags?page=1&ordering=last_updated)
![Pulls](https://img.shields.io/docker/pulls/tibia-oce/migrate)
[![Build](https://img.shields.io/docker/cloud/build/tibia-oce/migrate)](https://hub.docker.com/r/tibia-oce/migrate/builds)

```
migrate
├─ .gitignore
├─ Makefile
├─ README.md
├─ docker
│  ├─ Dockerfile
│  └─ docker-compose.yml
├─ go.mod
├─ go.sum
├─ renovate.json
├─ src
│  ├─ configs
│  │  ├─ configs.go
│  │  ├─ configs_test.go
│  │  ├─ database.go
│  │  └─ database_test.go
│  ├─ database
│  │  └─ connector.go
│  ├─ logger
│  │  └─ logger.go
│  ├─ main.go
│  └─ migrations
│     ├─ 1_forgottenserver_db.down.sql
│     ├─ 1_forgottenserver_db.up.sql
│     ├─ 2_account_table.down.sql
│     ├─ 2_account_table.up.sql
│     ├─ 3_initial_accounts.down.sql
│     └─ 3_initial_accounts.up.sql
└─ tmp
   ├─ 3_tfs_schema.down.sql
   ├─ 3_tfs_schema.up.sql
   └─ txt

```