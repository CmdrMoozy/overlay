cmdrmoozy Gentoo Overlay
========================

This is my personal Portage overlay. It contains various ebuilds I use which aren't in the main Portage tree.

Usage
-----

Add this overlay to your system using `app-portage/layman`:

    wget -q -O /etc/layman/overlays/cmdrmoozy.xml https://raw.githubusercontent.com/cmdrmoozy/overlay/master/repositories.xml
    layman -S
    layman -a cmdrmoozy

