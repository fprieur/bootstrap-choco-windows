# bootstrap-choco-windows

[![Build Status](https://travis-ci.org/VilledeMontreal/bootstrap-choco-windows.svg?branch=master)](https://travis-ci.org/VilledeMontreal/bootstrap-choco-windows)

### Description ###
Ce dépôt utilise [chocolatey](https://chocolatey.org/) pour installer automatiquement les pré-requis nécessairement pour le développement local avec nodejs et docker. Il utilise des scripts powershell avec chocolatey pour faciliter et accéler ces tâches.

#### Pré-requis ####

* Windows 7 64 bits
* Git for Windows
* Administrateur windows de son poste
* Google chrome
* Powershell

<hr>

### Installation ###
**Ouvrez un terminal powershell en mode administrateur**
<pre>git clone https://github.com/VilledeMontreal/bootstrap-choco-windows</pre>
<pre>cd bootstrap-choco-windows</pre>
<pre>.\bootstrap-vdm.ps1</pre>

<br>
**Les logiciels suivants seront installés:**
* docker
* docker-compose
* docker-machine
* Oracle VM VirtualBox
* Visual studio code
* jdk(Java Developpement Kit)
* Eclipse
* Netbeans
* Sublime Text
* Nodejs et npm

**De plus le script va éxécuter les tâches suivantes:**
* Création d'une machine virtuelle boot2docker
* "Binder" le terminal powershell avec la nouvelle vm préalablement créé
* Télécharger l'image hello-world de la ville de montréal
* Éxécuter cette image sur le port 80
* Ouvrir google chrome et afficher l'application
<hr>

### Désinstallation ###
<pre>.\bootstrap-vdm-uninstall.ps1</pre>
