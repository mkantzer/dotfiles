{ config
, pkgs
, lib
, ...
}:
let
  buildBinPackage = options:
    pkgs.stdenv.mkDerivation {
      inherit (options) pname version;
      src = pkgs.fetchurl {
        inherit (options) url sha256;
      };
      unpackPhase =
        if options ? "binPath"
        then "unpackFile $src"
        else ":";
      installPhase =
        let
          binPath =
            if options ? "binPath"
            then options.binPath
            else "$src";
          completionCommands =
            if options ? hasCompletion
            then ''
              $out/bin/${options.pname} completion bash > $out/share/bash-completion/completions/${options.pname}
              $out/bin/${options.pname} completion zsh > $out/share/zsh/site-functions/_${options.pname}
              $out/bin/${options.pname} completion fish > $out/share/fish/completions/${options.pname}.fish
            ''
            else "";
        in
        ''
          mkdir -p $out/bin $out/share/bash-completion/completions $out/share/zsh/site-functions $out/share/fish/completions
          cp ${binPath} $out/bin/${options.pname}
          chmod +x $out/bin/${options.pname}
          ${completionCommands}
        '';
    };


  bossac_arduino2 = buildBinPackage rec {
    pname = "arduino2";
    version = "1.9.1";
    url = "http://downloads.arduino.cc/tools/bossac-1.9.1-arduino2-osx.tar.gz";
    sha256 = "sha256-t3MhKTZKN4Z2YE22V5ybjatQ3ZZftQ16Ov/xg5yX/4A=";
    # sha256 = "107zjyf87wgz79x0vdazjvfm1awdkff5gdjdc1v8cdsa6qlj2wxp";
    binPath = "bin/bossac";
  };


  # velero = buildBinPackage rec {
  #   pname = "velero";
  #   version = "1.2.0";
  #   url = "https://github.com/vmware-tanzu/velero/releases/download/v${version}/velero-v${version}-linux-amd64.tar.gz";
  #   sha256 = "4080a37b487a859b5bba8391e965267cd0fe29cd67fd070b6f695fed45619e2c";
  #   binPath = "velero-v${version}-linux-amd64/velero";
in
{
  home.packages = with pkgs; [
    bossac_arduino2
    tinygo
  ];
}
