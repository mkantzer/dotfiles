{
  programs.gh.settings.aliases = {


    # personal = "!ln -fs ~/.config/gh/hosts.yml.personal ~/.config/gh/hosts.yml && gh auth status";
    # work = "!ln -fs ~/.config/gh/hosts.yml.work ~/.config/gh/hosts.yml && gh auth status";
    # pr-dvx = "!gh pr create --assignee mikekantzer-drizly --reviewer drizlyinc/hades $@";

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
}
