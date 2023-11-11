{stdenv
, lib
, buildNpmPackage
, fetchFromGitHub
}: stdenv.mkDeivation rec {
	pname = "grammerly-languageserver";
	version = "0.22.1";

	src = fetchFromGitHub {
		owner = "znck";
		repo = "grammarly";
		rev = "v${version}";
		sha256 = "sha256-ZEznR2hbi2cQZyvV5OKjHBUEPX/j1s/eMRCzvYHzySI";
	};



	build = ''
		'';

	

	meta = with lib; {
		description = "A language server to interact with grammerly";
		license = licenses.mit;
	};
}
