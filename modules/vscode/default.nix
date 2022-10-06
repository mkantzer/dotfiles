{ config, lib, pkgs, ... }:
{
  # https://nixos.wiki/wiki/Visual_Studio_Code
  # https://nix-community.github.io/home-manager/options.html#opt-programs.vscode.enable
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = true;
    extensions = with pkgs.vscode-extensions; [
      # https://search.nixos.org/packages?type=packages&query=vscode-extensions

      davidanson.vscode-markdownlint
      foxundermoon.shell-format
      editorconfig.editorconfig
      skyapps.fish-vscode
      vscodevim.vim
      ms-kubernetes-tools.vscode-kubernetes-tools
      james-yu.latex-workshop
      arcticicestudio.nord-visual-studio-code
      
      zhuangtongfa.material-theme
      
      christian-kohler.path-intellisense
      
      bbenoist.nix
      jnoortheen.nix-ide
      redhat.vscode-yaml
      yzhang.markdown-all-in-one

      esbenp.prettier-vscode

      ms-vscode-remote.remote-ssh

    ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
      # {
      #   name = "vscode-theme-onedark";
      #   publisher = "akamud";
      #   version = "1f120c8c9a4d6176b235a1c51ae2818b76785de6";
      #   sha256 = "Ew2QKqMB5rJK1irEkg3IYmuYwzFfl+Tv1U+OdR7FJh0=";
      # }
      # {
      #   name = "vscode-theme-onelight";
      #   publisher = "akamud";
      #   version = "c9b23767fbeaf75573cea06f7c5aca6eb8abf150";
      #   sha256 = "6xsWB1uTTKsU1SBLAC4nQRLEWbp/qI45vBI/HIWWDtI=";
      # }
      # {
      #   name = "vscode-theme-superonedark";
      #   publisher = "seansassenrath";
      #   version = "7a9a969c262eea70cfc15b31e3bce7343847bfc8";
      #   sha256 = "4nYR6S24Rz20mP/VMVYNXrZO/U9ibVROxGNLcEVvTiU=";
      # }
      # {
      #   name = "theme-monokai-pro-vscode";
      #   publisher = "monokai";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "nord-wave";
      #   publisher = "dnlytras";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "one-monokai";
      #   publisher = "azemoh";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "cuelang";
      #   publisher = "nickgo";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "vscode-cue-fmt";
      #   publisher = "jallen7usa";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "vscode-go-template";
      #   publisher = "jinliming2";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "vscode-nginx";
      #   publisher = "shanoor";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "spellright";
      #   publisher = "ban";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "regexp-preview";
      #   publisher = "louiswt";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "remote-containers";
      #   publisher = "ms-vscode-remote";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "vsliveshare-pack";
      #   publisher = "ms-vsliveshare";
      #   version = "";
      #   sha256 = "";
      # }
      # {
      #   name = "remote-ssh-edit";
      #   publisher = "ms-vscode-remote";
      #   version = "";
      #   sha256 = "";
      # }
    ];
  };
}
