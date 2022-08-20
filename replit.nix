{ pkgs }: {
    deps = [
      pkgs.firefox
      # Sideload pkgs.chromium
      # pkgs.opera
      # Sideload pkgs.libsForQt5.gwenview
      # pkgs.pantheon.elementary-code
      pkgs.htop
      pkgs.nano
      pkgs.bashInteractive
      pkgs.openbox
      pkgs.xlibs.xmessage
      pkgs.xterm
      pkgs.xorg.xcalc
      pkgs.xorg.xclock
      pkgs.xorg.xeyes
      pkgs.firefox-esr
      pkgs.dbus
      # pkgs.pantheon.gala
      # pkgs.lxqt
      pkgs.python310
      pkgs.obconf
      # Sideload pkgs.gnome.gnome-calculator
      # Sideload pkgs.gnome.gnome-characters
      # pkgs.libsForQt514.ark
      # Sideload pkgs.gnome.gedit
      # pkgs.vimer
      # Sideload pkgs.emacs
      # Sideload pkgs.gimp
      pkgs.openbox-menu
      # pkgs.xlibs.xsetroot
      # Sideload pkgs.imagemagick7
      # Sideload pkgs.feh
      # pkgs.feh.man
      # pkgs.feh.doc
      # pkgs.man-db
      # pkgs.gnome.gnome-session
      pkgs.p7zip
      pkgs.man-db
      pkgs.openssh_with_kerberos
      pkgs.psmisc
    ];
  env = {
    HICOLOR_ICON_PATH= "${pkgs.hicolor-icon-theme}";
    # REPLIT_BASHRC="${pkgs.replit-bashrc}";
    SSH_PATH= "${pkgs.openssh_with_kerberos}";
  };
}
