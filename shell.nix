let 
  pkgs = import <nixpkgs> { };
in pkgs.mkShell rec {
  buildInputs = with pkgs; [
    colima
    docker-client
    docker-compose
    docker-credential-helpers
  ];
}
