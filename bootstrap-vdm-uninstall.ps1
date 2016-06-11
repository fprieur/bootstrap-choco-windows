######################################################
# Uninstall apps using Chocolatey
######################################################

Write-Host "Vérifier la version de chocolatey"
powershell -command "choco -v"
Write-Host

Write-Host "uninstaller vm boot2docker"
powershell -command "docker-machine rm vdm -y"
Write-Host

Write-Host "uninstaller docker"
powershell -command "choco uninstall docker -y"
Write-Host

Write-Host "uninstaller docker-machine"
powershell -command "choco  uninstall docker-machine -y"
Write-Host

Write-Host "uninstaller docker-compose"
powershell -command "choco uninstall docker-compose -y"
Write-Host

Write-Host "uninstaller nodejs"
powershell -command "choco uninstall nodejs.install -y"
Write-Host

Write-Host "uninstaller eclipse"
powershell -command "cuninst eclipse -y"
Write-Host

Write-Host "uninstaller netbeans-jee "
powershell -command "cuninst netbeans-jee -y"
Write-Host

Write-Host "uninstaller sublimetext3"
powershell -command "cuninst sublimetext3 -y"
Write-Host

Write-Host "uninstaller Visual studio code"
powershell -command "cuninst visualstudiocode -y"
Write-Host

Write-Host "uninstaller jdk8"
powershell -command "cuninst jdk8 -y"
Write-Host

Write-Host "uninstaller Virtualbox -y"
powershell -command "cuninst virtualbox -y"
Write-Host

