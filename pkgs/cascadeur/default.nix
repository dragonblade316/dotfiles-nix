{stdenv, lib
, fetchurl
, autoPatchelfHook
, glib
, libGL
, blas
, libxcb
, xcbutilkeysyms
, xcbutilrenderutil
, libxkbcommon
, libkrb5
, xcbutilwm
, xcbutil
, xcbutilimage
, freetype
, fontconfig
, dbus
, qtbase
, wrapQtAppsHook
}:

stdenv.mkDerivation rec {
  pname = "cascadeur";
  version = "2023.1.1";

  src = fetchurl {
    #! no version in the url so updating will reqire a change here
    url = "https://cdn.cascadeur.com/builds/linux/63/cascadeur-linux.tgz";
    sha256 = "sha256-+RGgdWU2UKEv7UGQf9LRQFmc28ifxNCDmYg4g4oWKdg=";
  };

  nativeBuildInputs = [
    autoPatchelfHook
		wrapQtAppsHook
  ];

	buildInputs = [
		glib
		libGL
		blas
		libxcb
		xcbutilkeysyms
		xcbutilrenderutil
		libxkbcommon
		libkrb5
		xcbutilwm
		xcbutilwm
		xcbutilimage
		freetype
		fontconfig
		dbus
		qtbase
	];

  sourceRoot = ".";

  #ngl I have no clue what permisions 755 stands for but it was in the tutorial.
  installPhase = ''
		mkdir "$out/"
		cp -r . $out/bin
  '';

  meta = with lib; {
    homepage = "https://www.cascadeur.com/";
    description = "AI assisted animation";
    license = licenses.unfree;
    platforms = platforms.linux;

  };
}
