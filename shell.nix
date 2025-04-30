{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    (pkgs.python312.withPackages (ps: with ps; [
      jupyter
      ipython
      numpy
      matplotlib
      pandas
      torch
    ]))
  ];

  shellHook = "jupyter notebook";
}
