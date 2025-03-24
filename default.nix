with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  nativeBuildInputs = [
    cmake pkgs.qt6.qttools pkgs.qt6.wrapQtAppsHook pkgs.qt6.qtsvg opencascade-occt libGLU
  ];
  buildInputs = [ pkgs.qt6.qtbase ];
#  QT_QPA_PLATFORM_PLUGIN_PATH="${qt5.qtbase.bin}/lib/qt-${qt5.qtbase.version}/plugins";
}
