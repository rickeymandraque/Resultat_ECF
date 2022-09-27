#!/usr/bin/env bash

input_file="$1"
output_file="$2"
palette="/tmp/palette.png"


if [[ -z "$1" ]]; then
  echo "parametres d'entrée/sortie manquants"
  echo "utilisation :"
  echo -e "${0} \"/chemin/fichier.mp4\" \"/chemin/sortie.gif\""
  exit 1
elif [[ -z "$2" ]]; then
  echo "parametres de sortie manquants"
  echo "utilisation :"
  echo -e "${0} \"/chemin/fichier.mp4\" \"/chemin/sortie.gif\""
  exit 1
elif [[ ! -f "/usr/bin/ffmpeg" ]]; then
  echo "Erreur : FFMpeg manquant"
  echo "Veuillez l'installer avec sudo apt install ffmpeg"
  exit 1
elif [[ ! -f "$input_file" ]]; then
  echo "Fichier d'entrée inexistant"
  exit 1
else
  ffmpeg -y -i "$input_file" -vf palettegen "$palette"

  ffmpeg -y -i "$input_file" -i $palette -filter_complex paletteuse -r 10 -s 320x480 "$output_file"

  rm "$palette"

  exit 0
fi
