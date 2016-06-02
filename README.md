# bootstrap-choco-windows

### Description ###
Ce dépôt est un utilitaire [chocolatey](https://chocolatey.org/) pour installer automatiquement les pré-requis nécessairement pour le développement local avec nodejs et docker. Il utilise des scripts powershell avec chocolatey pour faciliter et accéler ces tâches.

#### Pré-requis ####

* Windows 7 64 bits
* Git for Windows
* Admin de son poste
* google chrome

<hr>

#### Pour procéder à l'installation, veuillez éxécuter les commandes suivantes: ####
**Ouvrez un terminal powershell en mode administrateur**
<pre>git clone https://github.com/VilledeMontreal/bootstrap-choco-windows</pre>
<pre>cd bootstrap-choco-windows</pre>
<pre>.\bootstrap-vdm.ps1</pre>

<br>
**Les logiciels suivants seront installés:**
* docker
* docker-compose
* docker-machine
* nodejs et npm

**De plus le script d'installer va éxécuter les tâches suivantes:**
* Création d'une machine virtuelle boot2docker
* "Binder" le terminal powershell avec la nouvelle vm préalablement créé
* Télécharger l'image hello-world de la ville de montréal
* Éxécuter cette image sur le port 80
* Ouvrir google chrome et afficher l'application
<hr>

#### Pour désinstaller ####
<pre>.\bootstrap-vdm-uninstall.ps1</pre>
