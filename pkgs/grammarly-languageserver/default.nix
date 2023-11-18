{stdenv
, lib
, fetchFromGitHub
, nodePackages.pnpm
, nodejs_21
}: stdenv.mkDerivation rec {
	pname = "grammerly-languageserver";
	version = "0.24.0";

	src = fetchFromGitHub {
		owner = "znck";
		repo = "grammarly";
		rev = "v${version}";
		sha256 = "sha256-ZEznR2hbi2cQZyvV5OKjHBUEPX/j1s/eMRCzvYHzySI";
	};

	buildInputs = [
		nodejs_21
	];

	nativeBuildInputs = [
		nodePackages.pnpm		
	];

	installPhase = ''
		pnpm install --frozen-lockfile
	'';

	meta = with lib; {
		description = "A language server to interact with grammerly";
		license = licenses.mit;
	};
}
