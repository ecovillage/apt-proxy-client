#!/bin/bash
# Copyright 2016 Holger Nassenstein
# Released under the GPL

# Create 7linden-apt-proxy-client**.deb

fpm -s dir\
    -t deb\
    -v `cat VERSION`\
    -a all\
    --name "7linden-apt-proxy-client"\
    --description "Configure apt proxy clients for 7 Linden lan"\
    --directories opt/7linden-apt-proxy-client\
    --depends bash\
    --depends "7linden-at-home (>= 0.1.4)"\
    --license "GPLv3"\
    --maintainer "h.nassenstein@mailbox.org"\
    --after-install scripts/after-install\
    --after-remove scripts/after-remove\
    etc opt
