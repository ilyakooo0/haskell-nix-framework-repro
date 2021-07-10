{ sources ? import ./nix/sources.nix
, haskellNix ? import sources.haskellNix { }
, pkgs ? import haskellNix.sources.nixpkgs-2105 haskellNix.nixpkgsArgs
}:
(pkgs.haskell-nix.cabalProject {
  src = ./.;
  index-state = "2021-07-02T00:00:00Z";
  compiler-nix-name = "ghc8105";
}).repro.components.exes.repro
