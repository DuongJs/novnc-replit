$ Reset terminal
tput sgr0
# Write everything to persistent storage once per second
bash -c "watch -n 1 --no-title --precise \"sync\"" 2>&1 1>/dev/null &
tput sgr0
ln -s `pwd`/Desktop ~
reset
# Install vscode
export "NIXPKGS_ALLOW_UNFREE=1"
export "NIXPKGS_ALLOW_BROKEN=1"
export "DISPLAY=:0"
# Set up nix
# export PATH="$PATH:`pwd`/xlunch"
export PATH="$PATH:$HOME/$REPL_SLUG/xlunch"
export PATH="$PATH:$HOME/.nix-profile/bin"
alias nix="nix --extra-experimental-features nix-command --extra-experimental-features flakes"


# nix-env -iA nixpkgs.vscode
# nix-env -iA nixpkgs.google-chrome
# nix-env -iA nixpkgs.google-chrome-beta
# nix-env -iA nixpkgs.google-chrome-dev
# nix-env -iA nixpkgs.discord
git clone --single-branch --depth 1 https://github.com/novnc/noVNC vnc
# curl "https://icon-theme.freedesktop.org/releases/hicolor-icon-theme-0.17.tar.xz" output -|tar -xf - -C /tmp/icons
# chmod a+x /tmp/icons/install-sh
# oldpwd=`pwd`
# cd /tmp/icons
# make install /tmp
# linux 4 curl --location "http://k.copy.sh/linux4.iso" --output /tmp/cdrom
# DSL 3
# curl --location "http://computernewb.com/~dartz/isos/dsl-3.4.12.iso" --output /tmp/cdrom
# curl --location "http://computernewb.com/~lily/ISOs/crustywindows/Windows%20XP/MiniXP.iso" --output /tmp/cdrom
# VirtualXP curl --location "https://github.com/lrusso/VirtualXP/raw/main/VirtualXP.iso" --output /tmp/cdrom
# Ubuntu 8
# curl --location "https://old-releases.ubuntu.com/releases/8.04.0/ubuntu-8.04.4-desktop-i386.iso" --output /tmp/cdrom
# Slax
# curl --location "https://ftp.sh.cvut.cz/slax/Slax-11.x/slax-ipxe.iso" --output /tmp/cdrom
# NodeOS
# curl --location "http://k.copy.sh/nodeos-kernel.bin" --output /tmp/kernel
# qemu-img create /tmp/hda 8192M
# qemu-img create /tmp/hdb 1024M
# qemu-img create /tmp/hdc 1024M
# qemu-img create /tmp/hdd 1024M
# qemu-system-i386 -m 128 -vnc :0 -cdrom /tmp/cdrom -nographic -fsdev local,id=host9p,path=/,security_model=none -device virtio-9p-pci,fsdev=host9p,mount_tag=host9p -no-acpi -hda /tmp/hda & # -hdb /tmp/hdb & # -hdc /tmp/hdc -hdd /tmp/hdd &# -action panic=pause& #-action watchdog=reset -action shutdown=pause -daemonize -watchdog  ib700&
Xvnc -listen localhost:5900 -localhost=1 -SecurityTypes=none -from 127.0.0.1 -noreset &
# Wait for Xvnc to start
sleep 3
# $( sleep 5 ; vnc/utils/novnc_proxy )
# $( fluxbox ; fluxbox ; fluxbox ; fluxbox ; fluxbox ; kill 1 ) &
# $( sleep 1 ; firefox ) &
# xmessage -center "Hi! This is an open NoVNC server by 9pfs. The following apps are installed:\nDiscord\nThunar\nChromium\nxterm\nNeofetch\nVisual Studio Code\nFirefox"
export machine_id_path=`type glib-compile-resources|head -c -28|tail -c +33`
source ./machine-id.sh
mkdir -p $machine_id_path/var/lib/dbus
dbus-uuidgen>$machine_id_path/var/lib/dbus/machine-id
echo $machine_id_path
# $( touchegg --daemon ; touchegg --daemon ; touchegg --daemon ; touchegg --daemon ; touchegg --daemon ; touchegg --daemon ; touchegg --daemon ; touchegg --daemon ; ) &
gala-daemon &
# $( gala --x11 --display=:0 ; xterm & gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; gala --x11 --display=:0 --sm-disable --sync ; ) &
# $( sleep 10; io.elementary.wingpanel ) &
# plank &
# cat apps.txt|./xlunch -d -q -g background.jpg -w 1920 -h 1080 &
export SHELL="/usr/bin/bash"
alias xterm="qterminal"
mkdir -p ~/.config/lxpanel/LXDE
# xlunch -w 1366 -h 768 -d -g 
# cat lxcfg>~/.config/lxpanel/LXDE/gtkrc
xcompmgr -c -t-5 -l-5 -r4.2 -o.55 &
# lxpanel &
openbox &
# cat apps.txt|xlunch --desktop --dontquit --noprompt --width 1366 --height 768 --background odin-dark.jpg &
# cat apps.txt|xlunch --desktop --dontquit --noprompt --width 1366 --height 768 --background odin-dark.jpg & lxqt-panel &
# Background package installs, run in parallel
# I love chromium, but just can't justify loading it on boot. (Regarding the second part of this async load list)
# We background the install, so everything can run in parallel.
# Permission denied :(
# ; cat chromium-browser.desktop>~/.nix-profile/share/applications/chromium-browser.desktop
#  -f https://github.com/NixOS/nixpkgs/archive/refs/heads/master.tar.gz
# openbox --replace &
mkdir -p /run/current-system/sw/bin
nix-env -iA nixpkgs.chromium
ln -s ~/.nix-profile/bin/dbus-daemon /run/current-system/sw/bin/dbus-daemon
nix-env --set-flag priority 4 firefox
$( nix-env -Pb -iA nixpkgs.hicolor-icon-theme; nix-env --set-flag priority 0 hicolor-icon-theme; nix-env -Pb -iA nixpkgs.lumina; $( nix-env -Pb -iA nixpkgs.g  nome.gnome-calculator nixpkgs.gnome.gedit nixpkgs.imagemagick7 nixpkgs.feh nixpkgs.emacs nixpkgs.chromium nixpkgs.gimp nixpkgs.gnome.gnome-terminal nixpkgs.xfce.thunar-volman nixpkgs.gnome.nautilus nixpkgs.imagemagick7 nixpkgs.gnome.gnome-usage nixpkgs.xfce.thunar; nix-env -iA nixpkgs.qemu nixpkgs.qtemu ) & lumina-desktop & echo lumina panel here & xterm & ) &
#io.elementary.files-daemon &
#io.elementary.settings-daemon &
# $( sleep 5; qterminal ) &
# gimp plugins aren't that important, lazy-load them
# nix-env -iA nixpkgs.gimpPlugins &
$( sleep 5 ; vnc/utils/novnc_proxy )
nohup bash index.sh &
# $( sleep 5 ; vnc/utils/novnc_proxy )
# watch -n 0 "xmessage -center 'fuck!!!'& "
# watch -n 10 "bash fluxbox.sh"