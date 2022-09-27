alias CheckMAJ="sudo apt update "               # Télécharge les informations des paquets à partir des sources configurées
alias MAJ="sudo apt update && sudo apt upgrade" # Installe les mises à jour identifiée avec apt update sans supprimer les paquets installés.
alias FullMAJ="sudo apt update && sudo apt dist-upgrade" # En plus de mettre à jour les paquets existants, elles vont également être en mesure de gérer les dépendances.

alias MonIPP=printf "$(curl -s ifconfig.me/ip)\n"   # IP Publique
#Fonction qui permet de créer un dossier et de rentrer directement à l'interieur
function mkcd() { mkdir -p "$@" && cd "$_"; }
alias mkcd="mkcd"

alias MKDirAZ="mkdir ./{A..Z}"

alias cherche='apt-cache search' # chercher un paquet
alias cls="clear" # effacer le terminal
alias ping="ping -c 5"
