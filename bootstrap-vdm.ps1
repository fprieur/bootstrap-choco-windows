# Installer chocolatey
iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))

# Redémarrager la session powershell sans sortir
powershell -command ". $profile"

# Vérifier la version de chocolatey
powershell -command "choco -v"

# Installer la dernière version de docker
powershell -command "choco install docker -y"
powershell -command "docker -v"

# Installer la dernière version de docker-machine
powershell -command "choco install docker-machine -y"
powershell -command "docker-machine -v"

# Installer la dernière version de docker-compose
powershell -command "choco install docker-compose -y"
powershell -command "docker-machine -v"

# Installer la dernière version de git
#powershell -command "choco --force install git"
#powershell -command "git version"

# Installer la dernière version de nodejs
powershell -command "choco install nodejs.install -y"
powershell -command "echo 'version de node'"
powershell -command "node -v"
powershell -command "echo 'version de npm'"
powershell -command "npm -v"


# Créér la vm boot2docker vdm
powershell -command "docker-machine create --driver=virtualbox vdm"

# Binder le terminal au deamon client docker
powershell -command "docker-machine env vdm | Invoke-Expression"
powershell -command "docker ps"

# Ouvrir l'application hello-world de la ville
powershell -command "docker run -d -p 80:80 vdmtl/hello-world"
$ipmachine = powershell -command "docker-machine ip vdm"
powershell -command "start chrome.exe $ipmachine"


