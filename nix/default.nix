{
  lib,
  stdenvNoCC,
  ...
}:
let
  name = "scarlett2-firmware-nix";
in
(stdenvNoCC.mkDerivation {
  inherit name;
  src = ../firmware;
  dontBuild = true;
  installPhase = ''
    mkdir -p $out/lib/firmware/scarlett2/
    cp -r $src/* $out/lib/firmware/scarlett2/
  '';
  meta = {
    homepage = "https://github.com/jakkunight/${name}";
    description = "Scarlett2 Firmware for Scarlett 2nd, 3rd, and 4th Gen, Clarett USB, and Clarett+ interfaces. Supports Nix/NixOS";
    maintainers = [ ];
    license = [ ];
  };

})
