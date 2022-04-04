#!/bin/bash

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "Dog sound" ${sounds[dog]}
echo "Animals" ${!sounds[@]}
echo "ALl animals sounds" ${sounds[@]}
echo "NO of Animals " ${#sounds[@]}
