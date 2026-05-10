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



in
{
  home.packages = with pkgs; [
    bossa
    tinygo
    # arduino-ide # linux only for some reason
    arduino-cli
    mpremote
    esptool
    espflash
  ];
}
