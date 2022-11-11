{ pkgs, ... }:

{
  programs.git = {
    enable = true;

    userName = "mk5r";
    userEmail = "github@kantzer.io";

    extraConfig = {
      diff.colorMoved = "default";
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;
    };

    ignores = [
      ".DS_Store"
      ".vscode"
      ".direnv"
      "result"
    ];

    # Enhanced diffs
    delta = {
      enable = true;
      options = {
        line-numbers = true;
        side-by-side = true;
        navigate = true;
      };
    };

    aliases = {
      # Basic commands
      a = "add";
      aa = "add --all";
      d = "diff";
      dc = "diff --cached";
      pl = "pull";
      pu = "push";
      puf = "push --force";
      s = "status";

      # Checkout commands
      co = "checkout";
      cob = "checkout -b";
      com = "checkout master";

      # Branch commands
      sw = "switch";
      sc = "switch -c";

      # Commit commands
      amend = "commit --amend --no-edit";
      c = "commit";
      ca = "commit -a";
      cam = "commit -a -m";
      cm = "commit -m";

      # Rebase commands
      rb = "rebase";
      rba = "rebase --abort";
      rbc = "rebase --continue";
      rbi = "rebase --interactive";
      rbs = "rebase --skip";

      # Reset commands
      r = "reset HEAD";
      r1 = "reset HEAD^";
      r2 = "reset HEAD^^";
      rhard = "reset --hard";
      rhard1 = "reset HEAD^ --hard";
      rhard2 = "reset HEAD^^ --hard";

      # Stash commands
      sd = "stash drop";
      spo = "stash pop";
      spu = "stash push";
      spua = "stash push --all";

      # Other commands
      lg = "log --graph --abbrev-commit --decorate --format=format:'%C(blue)%h%C(reset) - %C(green)(%ar)%C(reset) %s %C(italic)- %an%C(reset)%C(magenta bold)%d%C(reset)' --all";
      rs = "restore --staged";
    };



  };

  # GitHub CLI
  # https://rycee.gitlab.io/home-manager/options.html#opt-programs.gh.enable
  # Aliases config in ./gh-aliases.nix
  programs.gh = {
    enable = true;
    settings = {
      #  git_protocol = "ssh";
      git_protocol = "https";
      prompt = true;
      editor = "${pkgs.neovim}/bin/nvim";
      aliases = {
        rcl = "repo clone";
        rcr = "repo create";
        rfk = "repo fork --clone --remote";
        rv = "repo view";
        rvw = "repo view --web";
        icl = "issue close";
        icr = "issue create";
        il = "issue list";
        ire = "issue reopen";
        iv = "issue view";
        ivw = "issue view --web";
        pco = "pr checkout";
        pck = "pr checks";
        pcl = "pr close";
        pcr = "pr create";
        pd = "pr diff";
        pl = "pr list";
        pm = "pr merge";
        pre = "pr reopen";
        pv = "pr view";
        pvw = "pr view --web";
      };
    };
  };
}
