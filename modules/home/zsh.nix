{
  config,
  lib,
  pkgs,
  ...
}:
let
  p10k = "${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k";
in
{
  programs.fzf = {
    enable = true;
    # fzf.fish provides the fish bindings.
    enableFishIntegration = false;
    fileWidget.zsh = {
      command = "fd --type f --hidden --exclude .git";
      options = [ "--preview 'bat --color=always --style=numbers {}'" ];
    };
    changeDirWidget.zsh.command = "fd --type d --hidden --exclude .git";
  };

  # Runs zsh instead of bash for nix-shell, nix develop and nix shell.
  programs.nix-your-shell = {
    enable = true;
    enableFishIntegration = false;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    historySubstringSearch = {
      enable = true;
      searchUpKey = [
        "^[[A"
        "^[OA"
      ];
      searchDownKey = [
        "^[[B"
        "^[OB"
      ];
    };

    # EDITOR=nvim would otherwise select the vi keymap.
    defaultKeymap = "emacs";

    history = {
      size = 256000;
      save = 256000;
      ignoreAllDups = true;
    };

    setOptions = [
      "AUTO_CD"
      # Don't let a stray ctrl-d exit the shell.
      "IGNORE_EOF"
    ];

    shellAliases = config.programs.fish.shellAliases;

    siteFunctions = {
      gwta = ''
        local repoAddress repoName repoParent branchName newDirName
        repoAddress=$(git rev-parse --show-toplevel)
        repoName=''${repoAddress:t}
        repoParent=''${repoAddress:h}
        branchName=$1
        newDirName="$repoName-$branchName"
        echo "repoAddress: $repoAddress"
        echo "repoName: $repoName"
        echo "repoParent: $repoParent"
        echo "new dir: $repoParent/$newDirName"
        if git show-ref --quiet "refs/heads/$branchName"; then
          git worktree add "$repoParent/$newDirName" "$branchName"
        else
          git worktree add "$repoParent/$newDirName" -b "$branchName"
        fi
        cd "$repoParent/$newDirName"
      '';
      codee = ''code "$@" && exit'';
    };

    # The loop in fish.nix's shellInit, for the same nix-darwin $PATH ordering issue.
    # Login shells only, so nested shells (nix-shell, nix develop) keep their $PATH.
    profileExtra = ''
      typeset -U path
      (( ''${path[(Ie)/usr/local/bin]} )) || path=(/usr/local/bin $path)
      path=(
        '/Applications/Visual Studio Code.app/Contents/Resources/app/bin'
        ${config.home.homeDirectory}/.nix-profile/bin
        /etc/profiles/per-user/$USER/bin
        /nix/var/nix/profiles/default/bin
        /run/current-system/sw/bin
        $path
      )
    '';

    initContent = lib.mkMerge [
      (lib.mkOrder 550 ''
        source ${p10k}/powerlevel10k.zsh-theme
        source ${p10k}/config/p10k-classic.zsh
        source ${./p10k.zsh}
      '')
      ''
        zstyle ':completion:*' menu select
        zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

        WORDCHARS=''${WORDCHARS//\/}
        bindkey '^[[1;3D' backward-word
        bindkey '^[[1;3C' forward-word
        bindkey '^[[1;5D' backward-word
        bindkey '^[[1;5C' forward-word

        if [[ `uname` == Darwin ]]; then
            MAX_MEMORY_UNITS=KB
        else
            MAX_MEMORY_UNITS=MB
        fi

        TIMEFMT='%J   %U  user %S system %P cpu %*E total'$'\n'\
        'avg shared (code):         %X KB'$'\n'\
        'avg unshared (data/stack): %D KB'$'\n'\
        'total (sum):               %K KB'$'\n'\
        'max memory:                %M '$MAX_MEMORY_UNITS''$'\n'\
        'page faults from disk:     %F'$'\n'\
        'other page faults:         %R'
      ''
    ];
  };
}
