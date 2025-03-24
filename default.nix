with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  nativeBuildInputs = [
    cmake libsForQt5.qt5.qttools libsForQt5.qt5.wrapQtAppsHook libsForQt5.qtsvg opencascade-occt libGLU
  ];
  buildInputs = [ libsForQt5.qt5.qtbase ];
  QT_QPA_PLATFORM_PLUGIN_PATH="${qt5.qtbase.bin}/lib/qt-${qt5.qtbase.version}/plugins";
}
