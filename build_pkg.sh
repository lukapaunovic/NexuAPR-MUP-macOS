#!/bin/bash

ROOT="$PWD/nexu_pkg_build/root"
SCRIPTS="$PWD/nexu_pkg_build/scripts"
PKG="$PWD/NexuAPR_MUP.pkg"

echo "[*] Generišem PKG..."

pkgbuild \
  --root "$ROOT" \
  --identifier com.nexu.apr.mup \
  --version 1.4 \
  --install-location "/Applications" \
  --scripts "$SCRIPTS" \
  "$PKG"

echo "PKG generisan: $PKG"
echo "Instalacija:"
echo "sudo installer -pkg \"$PKG\" -target /"
