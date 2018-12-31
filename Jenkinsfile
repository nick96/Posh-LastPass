pipeline {
    agent none

    stages {
        stage("Linux dot-net core") {
            agent {
                dockerfile {
                    label    "linux"
                    filename "Dockerfile"
                    dir      "docker"
                }
            }

            steps {
                sh "/usr/bin/pwsh Invoke-Pester"
            }
        }

        stage("Native windows server") {
            agent {
                label "windows"
            }

            steps {
                bat "powershell.exe -ExecutionPolicty ByPass -Command Invoke-Pester"
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