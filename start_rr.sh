#! /bin/bash

cd $HOME/Documents/foxbit/blue-whale/
gnome-terminal --tab --title="blue-whale" -- zsh -c "docker-compose up -d; $SHELL"

gnome-terminal --tab --title="anglerfish" -- zsh -c "cd ../anglerfish; git fetch origin; $SHELL"
gnome-terminal --maximize title="nvim" -- bash -c "cd $HOME/Documents/foxbit/anglerfish/; nvim"

firefox 'https://calendar.google.com/calendar/u/0/r' & disown firefox
firefox 'https://mail.google.com/mail/u/0/#inbox' & disown firefox
firefox 'https://github.com/modiax/anglerfish/pulls' & disown firefox

slack & disown slack
spotify & disown spotify

sleep 30
firefox 'localhost:3000/' & disown firefox

exit
