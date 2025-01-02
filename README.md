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
| MacOS          | - |
| Ubuntu         | [![Ubuntu Build](https://github.com/tibia-oce/migrate/actions/workflows/build-release.yaml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/build-release.yaml) |
| Windows        | [![Windows Build](https://github.com/tibia-oce/migrate/actions/workflows/build-release.yaml.yml/badge.svg?branch=main)](https://github.com/tibia-oce/migrate/actions/workflows/build-release.yaml.yml) |

[![Workflow](https://github.com/tibia-oce/migrate/actions/workflows/build-release.yaml/badge.svg)](https://github.com/tibia-oce/migrate/actions/workflows/build-release.yaml)

### Getting **Started**

To run it, simply download the latest release and define your environment variables in a '.env' file.

**Enviroment Variables**

|       NAME          |            HOW TO USE                |
| :------------------ | :----------------------------------  |
|`MARIADB_DATABASE`       | `database name`     |
|`MARIADB_HOST`         | `database host`                      |
|`MARIADB_PORT`         | `database port`                      |
|`MARIADB_ROOT_PASSWORD`         | `database password`                  |
|`MARIADB_USERNAME`         | `database username`                  |

**Tests**  
`go test ./tests -v`

**Build**  
`go build -o TARGET_NAME ./src/`

**Linting**  
```sh
python -m venv .venv
.\.venv\Scripts\activate
pip install -r requirements.txt
sqlfluff fix migrations/*.sql
```

## Docker
`docker pull ghcr.io/tibia-oce/migrate:latest`
