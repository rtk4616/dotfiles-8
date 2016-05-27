# Helper functions

# Simple timers
function stopwatch()
{
    date1=`date +%s`; 
    while true; do 
        clear
        echo -ne "$(date -u --date @$((`date +%s` - $date1)) +%H:%M:%S)\r" | cowsay
        sleep 0.1
    done
}

function timer()
{
  local N=$1; shift
  (sleep "${N}" && notify-send -u critical "Time's Up" "${*:-BING}") &
  echo "timer set for ${N} seconds "
}

function clean-git() {
    rm .gitignore
    git clean -df
    git reset HEAD --hard
}

# Cd and list
function cdd(){ cd "$1" ; ls --color}

# Make and cd
function mkcd() { mkdir -p "$*" && cd "$*"; }

# Tree
function lss()  { tree $@ | less }

function wiki() { dig +short txt $(echo "$*" | tr ' ' _).wp.dg.cx }
function lls()  { locate "$*" | less }

# Command-line calculator
function calc() { python -ic "from __future__ import division; from math import *; from random import *" ;}

# Check if websites are down
function down4me() { curl -s "http://www.downforeveryoneorjustme.com/$1" | sed '/just you/!d;s/<[^>]*>//g';}
