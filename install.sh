#!/bin/sh
GTK3=$HOME/.config/test/gtk-3.0/gtk.css
GTK4=$HOME/.config/test/gtk-4.0/gtk.css

mainmenu() {
    echo -ne "1) Install for both GTK3/4
2) Install for only GTK3
3) Install for only GTK4
Choose an option:  "
    read -r reply
    case $reply in
      1)
        cp ./gtk-3.0/gtk.css $GTK3;cp ./gtk-4.0/gtk.css $GTK4
        ;;
      2)
        cp ./gtk-3.0/gtk.css $GTK3
        exit 0
        ;;
      3)
        cp ./gtk-4.0/gtk.css $GTK4
        exit 0
        ;;

      *)
        echo "Wrong option."
        exit 1
        ;;
    esac
}

mainmenu
