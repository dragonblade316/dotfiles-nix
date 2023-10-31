{lib
, buildNpmPackage
, fetchFromGithub
}: buildNpmPackage rec {
	pname = "grammerly-languageserver";
	version = "0.22.1";

	src = fetchFromGithub {
		owner = "znck";
		repo = "grammerly";
		rev = "v${version}";
		sha256 = "";
	};

	npmDepsHash = "";

	meta = with lib; {
		description = "A language server to interact with grammerly";
		license = licenses.mit;
	};
}
