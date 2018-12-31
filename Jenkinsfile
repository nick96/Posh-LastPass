node("linux") {
    def armImage = docker.build("jenkins/arm-ps", "-f docker/Dockerfile.arm .")

    stage("Linux dot-net core") {
        armImage.inside {
            sh "/usr/bin/pwsh Invoke-Pester"
        }
    }
}

node("windows") {
    def nanoserverImage = docker.build("jenkins/nanoserver-ps", "-f docker/Dockerfile.nanoserver .")

    stage("Native windows server") {
        bat "powershell.exe -ExecutionPolicy ByPass -Command Install-Module Pester"
        bat "powershell.exe -ExecutionPolicy ByPass -Command Invoke-Pester"
    }

    stage("Windows nanoserver dot-net core") {
        nanoserverImage.inside {
            bat "powershell.exe -ExecutionPolicty ByPass -Command Invoke-Pester"
        }
    }
}