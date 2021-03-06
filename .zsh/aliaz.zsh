# File associations aliases ==================================================================================

# Browser things
alias -s html=$BROWSER
alias -s org=$BROWSER
alias -s php=$BROWSER
alias -s com=$BROWSER
alias -s net=$BROWSER

# Text things
alias -s txt=$EDITOR
alias -s h=$EDITOR
alias -s cpp=$EDITOR
alias -s java=$EDITOR
alias -s conf=$EDITOR
alias -s PKGBUILD=$EDITOR

# Images
alias -s png=feh
alias -s jpg=feh
alias -s jpeg=feh
alias -s gif=feh
alias -s tiff=feh

# Office
alias -s sxw=soffice
alias -s doc=soffice

# Media
alias -s avi=mpv
alias -s mov=mpv
alias -s mkv=mpv
alias -s mp4=mpv

# Archives
alias -s gz=unp -u
alias -s tgz=unp -u
alias -s bz2=unp -u
alias -s tar=unp -u
alias -s 7z=unp -u
alias -s zip=unp -u
alias -s rar=unp -u

# Other
alias -s pdf=zathura
alias -s djvu=zathura
alias -s torrent=~/bin/download_torrent.sh

# Aliases ==================================================================================

# Listing
alias lsblk='lsblk --all --output NAME,MAJ:MIN,LABEL,PARTLABEL,SIZE,MODEL,TRAN,RM,MOUNTPOINT'
alias lsd='ls -ld *(-/DN)'
alias lsa='ls -ld .*'
alias la='ls++ -a'
alias ll='ls++'
alias l='ll'
#alias sl='ls' # let the train help it!
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'

# Shell
alias :q='exit'
alias :Q='exit'
alias cls='clear'
alias h='history'
alias dh='dirs -v'
alias ccp='rsync -av --stats --info=progress2'

# safety features
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias acp='acp -ig'
alias amv='amv -ig'

alias g='git'
alias gap='git add --patch'

alias clock='watch -n 1 "date +%T | xargs figlet \"Time:\" -c -t"'
alias todo='vim ~/Desktop/TODO.txt'
alias openports='netstat --all --numeric --programs --inet --inet6'
alias webshare='webfsd -p 12780 -d -4 -r ./'
alias webshare2='twistd3 -n web --port "tcp:port=12780" --path .'
alias webshare3='python -m http.server 12780'
alias makepassword='< /dev/urandom tr -dc A-Za-z0-9_ | head -c10 | xargs | cat'
alias makenumber='< /dev/urandom tr -dc 0-9 | head -c16 | xargs | cat'
alias ag='ag --color-match 38\;5\;197 --color-line-number 38\;5\;110 --color-path 38\;5\;215\;4'
alias ack=ag
alias mstream='mplayer -playlist'
alias grep='grep --colour'
alias fgrep='grep --colour'
alias egrep='egrep --colour'
alias free='free -m'
alias htop='htop -d 2'
alias feh='feh -g 640x480+1290+40 -d -S filename'
alias denoise='pactl load-module module-echo-cancel use_master_format=1 use_volume_sharing=false aec_method='"'"'webrtc'"'"' aec_args='"'"'"noise_suppression=1 voice_detection=1 beamforming=1 mic_geometry=0.04,0,0,-0.04,0,0"'"'"


# Programming
alias cmake-release='cmake -DCMAKE_BUILD_TYPE=Release'
alias cmake-debug='cmake -DCMAKE_BUILD_TYPE=Debug'

# Tools
alias vim-clean-views='rm -f ~/.vim/view/* ; rm -f ~/.local/share/nvim/view/*'
alias sdcv='sdcv --color'
alias sdc='sdcv -u "LingvoUniversal (En-Ru)" --color'
alias cgdb='cgdb -- -nx -x ~/.cgdbinit '
alias ccat='pygmentize -f 256 -g -O style=monokai,linenos=1'
alias sniff-flv='sudo ngrep -d any '.flv'  port 80'

## Editors aliases
alias vim='NVIM_LISTEN_ADDRESS=/tmp/nvimsocket nvim'
# alias e='vim'
# alias v='vim'
# alias vi='vim'
alias view='vim -R'

alias ..='cd ..'
alias ...='cd ../..'

alias workmac='TERM="xterm-256color" ssh eugene@10.3.10.59'
alias start-ssh-agent='eval "$(ssh-agent -s)"'


alias share-mon-small='x11vnc -viewonly -rfbauth ~/.vnc/passwd -ncache 16 -rfbport 12830 -clip 1080x960+1080+0 -nosel -noprimary -noclipboard -cursor arrow -forever -many -shared'
alias view-demelev='vncviewer demelev.dyndns.org::12730 -passwd ~/.x11vncpass '

# Fasd
# NOTE: using functs instead
# alias v='f -e nvim' # quick opening files with vim
# alias m='f -e mplayer' # quick opening files with mplayer
# alias o='a -e xdg-open' # quick opening files with xdg-open

