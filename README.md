# HAPI-FHIR Consent Enforcement Service (CES) Embedded Demonstration Environment
This repository contains the artifacts for demonstrating integration with the [LEAP Consent Decision Service (CDS)](https://github.com/sdhealthconnect/leap-cds) to enforce patient consent in a FHIR based exchange use-case. Where CES is implementated as an Interceptor within the HAPI-FHIR server.

## Prerequisites
- OpenJDK 11.0.6_10
- Maven 3.6.x
- Make sure your Maven is configured to fetch dependencies from Github packages as discussed [below](#enable-github-packages-for-maven)
- Docker 19.03.5 and Docker Compose 1.25.2

## Build Instructions
-  Clone this repository and change to the repository directory:
```
> git clone https://github.com/sdhealthconnect/leap-hapi-fhir-ces-embedded.git
> cd leap-hapi-fhir-ces-embedded
```
- Review the environment variable file `docker-env.sh` and modify if needed:
```
#!/bin/sh

export HAPI_DB_URL='jdbc:mysql://hapi-fhir-mysql:3306/hapi?serverTimezone=UTC&max_allowed_packet=16777216&createDatabaseIfNotExist=true'
export HAPI_DB_USER=admin
export HAPI_DB_PASS=admin

export HAPI_FHIR_URL_PUBLIC='http://host.docker.internal:6060/hapi-fhir-jpaserver/'
export HAPI_FHIR_URL='http://hapi-fhir-jpaserver:6060/hapi-fhir-jpaserver/fhir/'

export CDS_HOST_URL='https://sdhc-leap.appspot.com'

export LEAP_LOG_LEVEL='WARN'
```

- Build the project
```
> mvn clean install -DskipTests
```
- Ensure Docker is running locally and;
```
> docker build .
```

## Running LEAP HAPI FHIR CES Embedded
A version of this project is running on the Google cloud where the FHIR base endpoint is;
http://35.235.74.117:8080/hapi-fhir-jpaserver/fhir/

Otherwise you may modify the docker-compose.yml and docker-env.sh files to reflect your local environment and then just;

```
> docker-compose up
```


