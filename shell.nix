{ pkgs ? import <nixpkgs> {} }:
pkgs.mkShell {
  nativeBuildInputs = with pkgs; [ pkg-config meson ninja ];
  buildInputs = with pkgs; [
    gtk3
    python311Packages.cython
    python311Packages.setuptools
    python311Packages.wheel
  ];
}
