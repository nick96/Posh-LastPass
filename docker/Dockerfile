FROM mcr.microsoft.com/powershell:6.1.0-ubuntu-18.04

WORKDIR /app

RUN /usr/bin/pwsh -Command "Install-Module -Name Pester -Force"

COPY ./Jenkinsfile ./
COPY ./PoshLastPass/*.psd1 ./
COPY ./PoshLastPass/*.psm1 ./