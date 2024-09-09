{
  pkgs ? import <nixpkgs> { },
}:

with pkgs;

mkShell {
  buildInputs = [
    elmPackages.elm
    elmPackages.nodejs
    elmPackages.elm-format
  ];
}
