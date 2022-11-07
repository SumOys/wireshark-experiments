{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/1ffba9f2f683063c2b14c9f4d12c55ad5f4ed887.tar.gz") { }
}:

let
  shellDeps = with pkgs; [
    python310
    curl
    inetutils
  ];
in
pkgs.mkShell {
  buildInputs = shellDeps;

  shellHook = ''
  '';
}
