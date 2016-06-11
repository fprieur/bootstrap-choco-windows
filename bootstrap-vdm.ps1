######################################################
# Install apps using Chocolatey
######################################################

Write-Host "Installing Chocolatey"
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
Write-Host

Write-Host "enable -n autoUninstaller"
powershell -command "choco feature enable -n autoUninstaller"
Write-Host

Write-Host "Vérifier la version de chocolatey"
powershell -command "choco -v"
Write-Host

Write-Host "Installing docker - version 1.11.0"
cinst docker -version 1.11.0 -y
Write-Host

Write-Host "Installing docker-machine - version 0.6.0"
cinst docker-machine -version 0.6.0 -y
Write-Host

Write-Host "Installing docker-compose - version 1.7.0"
cinst docker-compose -version 1.7.0 -y
Write-Host

Write-Host "Installing virtualbox - version 5.0.14.105127"
cinst virtualbox -version 5.0.14.105127 -y
Write-Host

Write-Host "Installing visualstudiocode - version 1.0"
cinst visualstudiocode -version 1.0 -y
Write-Host

Write-Host "Installing jdk8"
cinst jdk8 -y
Write-Host

Write-Host "Installing eclipse - version 4.5.1 Mars"
cinst eclipse -version 4.5.1 -y
Write-Host

Write-Host "Installing netbeans-jee - version 8.0.2"
cinst netbeans-jee -version 8.0.2 -y
Write-Host

Write-Host "Installing sublimetext3 - version 3.0.0.3103"
cinst sublimetext3 -version 3.0.0.3103 -y
Write-Host

Write-Host "Installing nodejs.install - version 5.10.1"
cinst nodejs.install -version 5.10.1 -y
Write-Host

Write-Host "Créér la vm boot2docker vdm"
powershell -command "docker-machine create --driver=virtualbox vdm"
Write-Host

Write-Host "Binder le terminal au deamon client docker"
powershell -command "docker-machine env vdm | Invoke-Expression"
powershell -command "docker ps"
Write-Host

Write-Host "Ouvrir l'application hello-world de la ville"
powershell -command "docker run -d -p 80:80 vdmtl/hello-world"
$ipmachine = powershell -command "docker-machine ip vdm"
powershell -command "start chrome.exe $ipmachine"
Write-Host