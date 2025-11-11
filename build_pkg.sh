#!/bin/bash

echo "Kreiram PKG koristeći postojeće NexuAPR.app i scripts..."

pkgbuild \
  --root "./nexu_pkg_build/root" \
  --identifier com.nexu.apr.mup \
  --version 1.1 \
  --install-location "$HOME/Desktop" \
  --scripts "./nexu_pkg_build/scripts" \
  "$HOME/Desktop/NexuAPR_MUP.pkg"

echo "Gotovo! PKG je na Desktop-u"
