{ pkgs, ... }:
{
  programs.git = {
    enable = true;

    signing = {
      format = "ssh";
      key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF9K7mYtXECI6LD8iptulJC3eXZL4fE+M1M24UftlcnX";
      signer =
        if pkgs.stdenv.hostPlatform.isDarwin then
          "/Applications/1Password.app/Contents/MacOS/op-ssh-sign"
        else
          "/opt/1Password/op-ssh-sign";
      signByDefault = true;
    };

    settings = {
      user = {
        name = "mk5r";
        email = "github@kantzer.io";
      };

      diff.colorMoved = "default";
      init.defaultBranch = "main";
      pull.rebase = false;
      push.autoSetupRemote = true;

      alias = {
        a = "add";
        aa = "add --all";
        d = "diff";
        dc = "diff --cached";
        pl = "pull";
        pu = "push";
        puf = "push --force";
        s = "status";

        co = "checkout";
        cob = "checkout -b";
        com = "checkout main";

        sw = "switch";
        sc = "switch -c";

        amend = "commit --amend --no-edit";
        c = "commit";
        ca = "commit -a";
        cam = "commit -a -m";
        cm = "commit -m";

        rb = "rebase";
        rba = "rebase --abort";
        rbc = "rebase --continue";
        rbi = "rebase --interactive";
        rbs = "rebase --skip";

        r = "reset HEAD";
        r1 = "reset HEAD^";
        r2 = "reset HEAD^^";
        rhard = "reset --hard";
        rhard1 = "reset HEAD^ --hard";
        rhard2 = "reset HEAD^^ --hard";

        sd = "stash drop";
        spo = "stash pop";
        spu = "stash push";
        spua = "stash push --all";

        wtl = "worktree list";
        wtrm = "worktree remove";

        lg = "log --graph --abbrev-commit --decorate --format=format:'%C(blue)%h%C(reset) - %C(green)(%ar)%C(reset) %s %C(italic)- %an%C(reset)%C(magenta bold)%d%C(reset)' --all";
        rs = "restore --staged";
      };
    };

    ignores = [
      ".DS_Store"
      ".vscode"
      ".direnv"
      "result"
    ];
  };

  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "ssh";
      prompt = true;
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
