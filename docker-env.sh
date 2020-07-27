#!/bin/sh

HAPI_DB_URL=jdbc:mysql://hapi-fhir-mysql:3306/hapi?serverTimezone=UTC&max_allowed_packet=16777216&createDatabaseIfNotExist=true
HAPI_DB_USER=hapiDbUser
HAPI_DB_PASS=hapiDbPass

HAPI_FHIR_URL_PUBLIC=http://host.docker.internal:8080/hapi-fhir-jpaserver/
HAPI_FHIR_URL=http://hapi-fhir-jpaserver:8080/hapi-fhir-jpaserver/fhir/

CDS_HOST_URL=https://sdhc-leap.appspot.com

LEAP_LOG_LEVEL=WARN
