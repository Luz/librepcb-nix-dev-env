with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    cmake libsForQt5.qt5.qtbase libsForQt5.qt5.qttools libsForQt5.qtquickcontrols2 opencascade-occt libGLU freeimage
  ];
}
