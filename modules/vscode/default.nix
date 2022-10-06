{ config, lib, pkgs, ... }:
{
  # https://nix-community.github.io/home-manager/options.html#opt-programs.vscode.enable
  programs.vscode = {
    enable = true;
    mutableExtensionsDir = true;
    extensions = with pkgs.vscode-extensions; [
      # https://search.nixos.org/packages?type=packages&query=vscode-extensions
      akamud.vscode-theme-onedark
      akamud.vscode-theme-onelight
      seansassenrath.vscode-theme-superonedark


      nickgo.cuelang
      jallen7usa.vscode-cue-fmt
      davidanson.vscode-markdownlint


      foxundermoon.shell-format
      ban.spellright
      editorconfig.editorconfig

      skyapps.fish-vscode

      ms-vscode-remote.remote-containers
      vscodevim.vim
      yzhang.markdown-all-in-one

      jinliming2.vscode-go-template
      ms-kubernetes-tools.vscode-kubernetes-tools
      zhuangtongfa.material-theme

      james-yu.latex-workshop
      ms-vsliveshare.vsliveshare-pack
      monokai.theme-monokai-pro-vscode
      shanoor.vscode-nginx
      jnoortheen.nix-ide
      bbenoist.nix
      arcticicestudio.nord-visual-studio-code
      dnlytras.nord-wave
      azemoh.one-monokai
      christian-kohler.path-intellisense
      esbenp.prettier-vscode
      louiswt.regexp-preview
      ms-vscode-remote.remote-ssh
      ms-vscode-remote.remote-ssh-edit

      redhat.vscode-yaml
    ];
  };
}
