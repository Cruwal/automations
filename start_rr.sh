#! /bin/bash

cd $HOME/Documents/runrunit/

gnome-terminal --tab --title="terminal" -- zsh -c "git fetch upstream; $SHELL"
gnome-terminal --tab --title="foreman" -- zsh -c "foreman start -f foreman start -f Procfile.dev.linux; $SHELL"
gnome-terminal --tab --title="rails s" -- zsh -c "rails s; $SHELL"
gnome-terminal --maximize -- bash -c "cd $HOME/Documents/runrunit/; lvim"

firefox 'https://mail.google.com/chat/u/0/#chat/welcome' & disown firefox
firefox 'https://runrun.it/en-US' & disown firefox
google-chrome 'https://calendar.google.com/calendar/u/0/r' & disown google-chrome
google-chrome 'https://meet.google.com/mwq-vnkz-keh?pli=1&authuser=1' & disown google-chrome

spotify & disown spotify

sleep 30
firefox 'localhost:3000/' & disown firefox
