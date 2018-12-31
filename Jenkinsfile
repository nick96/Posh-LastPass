pipeline {
    agent none

    stages {

        def armImage = docker.build("jenksin/arm-ps", "-f docker/Dockerfile.arm .")

        stage("Linux dot-net core") {
            agent {
                dockerfile {
                    label    "linux"
                    args     "-f docker/dockerfile.arm ."
                }
            }

            armImage.inside {
                sh "/usr/bin/pwsh Invoke-Pester"
            }
        }

        stage("Native windows server") {
            agent {
                label "windows"
            }

            steps {
                bat "powershell.exe -ExecutionPolicy ByPass -Command Install-Module Pester"
                bat "powershell.exe -ExecutionPolicy ByPass -Command Invoke-Pester"
            }
        }

        stage("Windows nanoserver dot-net core") {
            agent {
                    dockerfile {
                        label    "linux"
                        filename "Dockerfile.nanoserver"
                        dir      "docker"
                    }
            }

            steps {
                bat "powershell.exe -ExecutionPolicty ByPass -Command Invoke-Pester"
            }
        }
    }    
}