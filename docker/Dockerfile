FROM mcr.microsoft.com/powershell

WORKDIR /app

RUN /usr/bin/pwsh -Command "Install-Module -Name Pester -Force"

COPY ./Jenkinsfile ./
COPY ./PoshLastPass/*.psd1 ./
COPY ./PoshLastPass/*.psm1 ./