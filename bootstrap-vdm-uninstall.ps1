# Redémarrager la session powershell sans sortir
powershell -command ". $profile"

# Vérifier la version de chocolatey
powershell -command "choco -v"

# désinstaller ls vm boot2docker
powershell -command "docker-machine rm vdm -y"

# uninstaller la dernière version de docker
powershell -command "choco uninstall docker"


# uninstaller la dernière version de docker-machine
powershell -command "choco  uninstall docker-machine"

# uninstaller la dernière version de docker-compose
powershell -command "choco uninstall docker-compose"

# uninstaller la dernière version de git
#powershell -command "choco --force uninstall git"
#powershell -command "git version"

# uninstaller la dernière version de nodejs
powershell -command "choco uninstall nodejs.install"
#powershell -command "echo 'version de node'"
#powershell -command "node -v"
#powershell -command "echo 'version de npm'"
#powershell -command "npm -v"
