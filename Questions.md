1) Quel est le fichier de personnalisation de l'environnement utilisateur ?
> /home/utilisateur/.bashrc
2) Modifiez ce fichier pour qu'il prenne en compte un fichier où on ajoutera de commande personnalisé.
> https://github.com/rickeymandraque/Resultat_ECF/blob/main/.bashrc.sh
> Ligne 105

3) Comment s'appelle le fichier personnalisé ?
> /home/utilisateur/.bash_aliases

4) Modifier ce dernier fichier pour ajouter ces commandes:
- Vérifier la mise à jour des paquets.
- Vérifier et faire les mise à jour des paquet.
- Faire les mise à jour des paquet et les mise à niveau en 1 seule commande.
- Obtenir son adresse IP publique
- Créer un dossiers et se rendre dedans automatiquement
- Créer une arborescence de A à Z
- chercher un paquet
- effacer le terminal en 3 lettres
- faire un ping de 5 paquets en 1 commande

> https://github.com/rickeymandraque/Resultat_ECF/blob/main/.bash_aliases.sh

5) Téléchargez cette vidéo dans le dossier_utilisateur/Vidéos en lui donnant le nom de "Arbres.mp4" (https://download.samplelib.com/mp4/sample-5s.mp4)

```bash
wget-O "~/Vidéos/Arbres.mp4" "https://download.samplelib.com/mp4/sample-5s.mp4"
```

6) Créer un script utilisant FFmpeg qui convertira automatiquement la vidéo en gif
> https://github.com/rickeymandraque/Resultat_ECF/blob/main/mp42gif.sh


7) Afficher la page web https://www.example.com/page.html avec le code source dans un terminal

```bash
curl https://www.example.com/page.html
```

8) afficher la même page mais que le texte
```bash
curl -s https://www.example.com/page.html | grep '<p>' | sed -E 's/<p>//' | sed -E 's/<a href="//' | sed 's/">/ /' | sed -E 's/<\/p>//' | sed -E 's/<\/a>//'
```
