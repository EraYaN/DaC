#!/bin/sh
git config --global core.editor gedit
git config --global user.email $1
git config --global user.name $2
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=3600'

