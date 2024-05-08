{ pkgs ? import <nixpkgs> {} }:

with pkgs.python311Packages;

let
  inherit (pkgs) gtk3 pkg-config meson ninja lib;
in
buildPythonPackage rec {
  name = "pyui-ng";
  version = "0.0.1";
  format = "setuptools";

  src = lib.cleanSource ./.;

  nativeBuildInputs = [
    setuptools
    cython
    wheel

    # C compiler
    pkg-config
    meson
    ninja
  ];

  doCheck = false;

  dontUseMesonConfigure = true;
  dontUseMesonCheck = true;
  dontUseMesonInstall = true;

  buildInputs = [ gtk3 ];

  pythonImportsCheck = [
    "pyui_ng"
  ];
}
