with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  nativeBuildInputs = [
    cmake libsForQt5.qt5.qttools libsForQt5.qt5.wrapQtAppsHook libsForQt5.qtquickcontrols2 opencascade-occt libGLU
  ];
  buildInputs = [ libsForQt5.qt5.qtbase ];
  propagatedBuildInputs = [ freeimage ];
}
