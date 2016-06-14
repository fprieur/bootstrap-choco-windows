# Guide de contribution
Pour contribuer à ce projet, vous pouvez suivre les étapes suivantes:

1. #### Forker le projet dans votre profil github ####
[ ]ajouter image du bouton


2. #### Clonez votre projet localement ####
<pre>git clone hhtps://fprieur/bootstrap-choco-windows</pre>

3. #### Effectuez les changement localement ou dans l'interface de github ####

4. #### Ajouter la branche upstream du projet original à la branche master de votre projet local ####
Pour voir toutes les branches remotes associé à votre projet local
<pre>git remote -v
origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
origin  https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)</pre>
<hr>
Ajoutez la branche upstream du projet originale
<pre>git remote add upstream https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git</pre>
<hr>
La branche upstream est maintenant ajoutée
<pre>git remote -v
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (fetch)
origin    https://github.com/YOUR_USERNAME/YOUR_FORK.git (push)
upstream  https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git (fetch)
upstream  https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY.git (push)</pre>

4. #### Synchronisez la branche upstream du projet original avec votre projet ####
Récupérer les changements du projet original
<pre>git fetch upstream
remote: Counting objects: 75, done.
remote: Compressing objects: 100% (53/53), done.
remote: Total 62 (delta 27), reused 44 (delta 9)
Unpacking objects: 100% (62/62), done.
From https://github.com/ORIGINAL_OWNER/ORIGINAL_REPOSITORY</pre>
<hr>
Allez sur votre branche master locale
<pre>git checkout master
Switched to branch 'master'</pre>
<hr>
Vous mergez les changements de la branche upstream dans votre branche master locale
<pre>git merge upstream/master
Updating a422352..5fdff0f
Fast-forward
 README                    |    9 -------
 README.md                 |    7 ++++++
 2 files changed, 7 insertions(+), 9 deletions(-)
 delete mode 100644 README
 create mode 100644 README.md</pre>
 <hr>
 Finalement, vous mettez à jour votre dépôt sur github
 <pre>git push origin master</pre>
