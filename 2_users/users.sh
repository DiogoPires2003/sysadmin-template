#!/bin/bash

#crear users
useradd -m ferran
useradd -m pablo
useradd -m oriol

#crear grup i afegir users
groupadd profes
add user ferran profes
add user pablo profes
add user oriol profes

#crear carpeta i assignar permisos
mkdir /tmp/prac3
chown -R root:profes /tmp/prac3

#crear fitxer i assignar permisos
echo "fitxer de prova" > /tmp/prac3/prova.txt
chown ferran:profes /tmp/prac3/prova.txt
chmod 770 /tmp/prac3/prova.txt

#crear fitxers personals 
echo "fitxer de prova" > /tmp/prac3/provaP1.txt
chown ferran:profes /tmp/prac3/provaP1.txt
chmod 700 /tmp/prac3/provaP1.txt

echo "fitxer de prova" > /tmp/prac3/provaP2.txt
chown pablo:profes /tmp/prac3/provaP2.txt
chmod 700 /tmp/prac3/provaP2.txt

echo "fitxer de prova" > /tmp/prac3/provaP3.txt
chown oriol:profes /tmp/prac3/provaP3.txt
chmod 700 /tmp/prac3/provaP3.txt

    