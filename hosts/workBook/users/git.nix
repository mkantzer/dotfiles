{ config, ... }:
{
  programs = {
    git = {
      userEmail = "mike.kantzer@drizly.com";
      userName = "mkantzer-drizly";
    };

    gh.settings.aliases = {
      # personal = "!ln -fs ~/.config/gh/hosts.yml.personal ~/.config/gh/hosts.yml && gh auth status";
      # work = "!ln -fs ~/.config/gh/hosts.yml.work ~/.config/gh/hosts.yml && gh auth status";
      pr-dvx = "!gh pr create --assignee mikekantzer-drizly --reviewer drizlyinc/hades $@";

      prd = ''
        !export pr_message=$@
        export branch_name=$(git symbolic-ref --short -q HEAD)
        export branch_board=$(echo $branch_name | rg  '(^[A-Za-z]{2,})-([0-9]*)-(.*)' -or '$1')
        export branch_ticket=$(echo $branch_name | rg  '(^[A-Za-z]{2,})-([0-9]*)-(.*)' -or '$2')
        export branch_title=$(echo $branch_name | rg  '(^[A-Za-z]{2,})-([0-9]*)-(.*)' -or '$3')
        if [ -n $branch_board ] && [ -n $branch_board ] && [ -n $branch_title ]
        then
          gh pr create \
            --assignee @me \
            --title "''${branch_title}" \
            --reviewer drizlyinc/chades \
            --body "TICKET: [''${branch_board}-''${branch_ticket}](https://drizly.atlassian.net/browse/''${branch_board}-''${branch_ticket}) 
           ''${pr_message}"
        else
          gh pr create \
            --assignee @me \
            --title "''${branch_title}" \
            --reviewer drizlyinc/chades \
            --body "TICKET: not found in branch name.
            ''${pr_message}"
        fi
      '';
    };
  };
}
