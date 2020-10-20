with import <nixpkgs> {};

pkgs.libsForQt5.callPackage({mkDerivation}: mkDerivation) {} rec {
  pname = "librepcb";
  version = "0.1.5";

  src = pkgs.fetchFromGitHub {
    owner = "LibrePCB";
    repo = "LibrePCB";
    fetchSubmodules = true;
    rev = "a435c5095c6f94df4da130fe832ea97f42d17901";
    sha256 = "0ag8h3id2c1k9ds22rfrvyhf2vjhkv82xnrdrz4n1hnlr9566vcx";
  };

  nativeBuildInputs = with pkgs; [ qt5.qmake qt5.qttools qt5.wrapQtAppsHook ];
  buildInputs = with pkgs; [ qt5.qtbase ];
}

