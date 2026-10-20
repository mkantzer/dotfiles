{
  config,
  lib,
  pkgs,
  ...
}:
let
  flake = "${config.home.homeDirectory}/.config/dotfiles";
in
{
  home.sessionPath = [ "${config.home.homeDirectory}/.krew/bin" ];

  programs.fish = {
    enable = true;
    plugins = [
      {
        name = "tide";
        src = pkgs.fetchFromGitHub {
          owner = "IlanCosman";
          repo = "tide";
          rev = "v5.5.1";
          sha256 = "vi4sYoI366FkIonXDlf/eE2Pyjq7E/kOKBrQS+LtE+M=";
        };
      }
      {
        name = "fzf.fish";
        src = pkgs.fetchFromGitHub {
          owner = "PatrickF1";
          repo = "fzf.fish";
          rev = "v9.4";
          sha256 = "11fs3wihjid0k4bdllac8d1sah31z5hdl8g58sbr0302p7mgzyif";
        };
      }
    ];

    functions = {
      gwta = {
        body = ''
          set repoAddress (git rev-parse --show-toplevel)
          set repoName (path basename $repoAddress)
          set repoParent (path dirname $repoAddress)
          set branchName $argv
          set newDirName "$repoName-$branchName"
          echo "repoAddress: $repoAddress"
          echo "repoName: $repoName"
          echo "repoParent: $repoParent"
          echo "new dir: $repoParent/$newDirName"
          if git show-ref --quiet refs/heads/$branchName
            git worktree add $repoParent/$repoName-$branchName $branchName
          else
            git worktree add $repoParent/$repoName-$branchName -b $branchName
          end
          cd $repoParent/$newDirName
        '';
        description = ''
          Adds a git worktree and changes to its directory.

          Used as `gwta <branch-name>`. Repo name is auto-derived.

          Located at ../<repo-name>-<branch-name>.
          Checked out to maybe-new branch <branch-name>.
        '';
        wraps = "git worktree add";
      };
      codee = {
        body = "code $argv && exit";
        description = "Opens vscode in first arg directory, then exits shell.";
        wraps = "code";
      };
    };

    shellAliases = {
      drb = "darwin-rebuild build --flake ${flake}";
      drs = "sudo darwin-rebuild switch --flake ${flake}";
      nrb = "nixos-rebuild build --flake ${flake}";
      nrs = "sudo nixos-rebuild switch --flake ${flake}";
      cdot = "cd ${flake}";
      cdote = "cd ${flake} && code . && exit";
      flakeup = "nix flake update --flake ${flake}";
      nb = "nix build";
      nd = "nix develop";
      nf = "nix flake";
      nr = "nix run";
      ns = "nix search";
      nso = "nix store optimise";

      ".." = "cd ..";
      ":q" = "exit";
      cat = lib.getExe pkgs.bat;
      du = lib.getExe pkgs.dust;
      g = lib.getExe pkgs.git;
      la = "ll -a";
      ll = "ls -l --time-style long-iso --icons";
      ls = lib.getExe pkgs.eza;
      gitroot = "cd $(g rev-parse --show-toplevel)";

      kc = "kubectl";
      kx = "kubectx";
      kn = "kubens";

      tf = "terraform";
      tfw = "terraform workspace";
      tfws = "terraform workspace select";
      tfwl = "terraform workspace list";
      tg = "terragrunt";
      ot = "tofu";
    };

    # Runs before loginShellInit and interactiveShellInit.
    # The loop works around $PATH ordering on nix-darwin: https://github.com/LnL7/nix-darwin/issues/122
    shellInit = ''
      for p in /run/current-system/sw/bin
        if not contains $p $fish_user_paths
          set -g fish_user_paths $p $fish_user_paths
        end
      end

      fish_add_path /usr/local/bin

      fish_add_path --prepend --move /nix/var/nix/profiles/default/bin
      fish_add_path --prepend --move /etc/profiles/per-user/(whoami)/bin
      fish_add_path --prepend --move ${config.home.homeDirectory}/.nix-profile/bin
      fish_add_path --prepend --move '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
    '';

    interactiveShellInit = ''
      set -g fish_greeting ""

      # Tide stores its settings in universal variables, so configure only once.
      # https://github.com/IlanCosman/tide/issues/304
      if not set -q tide_left_prompt_items
        echo 2 1 3 2 3 3 1 2 2 1 2 1 1 y | tide configure >/dev/null
      end

      # Don't let a stray ctrl-d exit the shell
      # https://github.com/fish-shell/fish-shell/issues/5593#issuecomment-458242921
      bind --erase --preset \cd
      bind \cd delete-char
    '';
  };
}
