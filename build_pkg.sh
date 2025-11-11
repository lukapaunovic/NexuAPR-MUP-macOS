#!/bin/bash

echo "Kreiram PKG koristeći postojeće NexuAPR.app i scripts..."

pkgbuild \
  --root "$HOME/nexu_pkg_build/root/Applications/NexuAPR.app" \
  --identifier com.nexu.apr.mup \
  --version 1.2 \
  --install-location "/Applications/NexuAPR.app" \
  --scripts "$HOME/nexu_pkg_build/scripts" \
  "$HOME/Desktop/NexuAPR_MUP.pkg"

echo "Gotovo! PKG je na Desktop-u"
