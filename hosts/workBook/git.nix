{ config, ... }:
{
  home-manager.users.mkantzer.programs = {
    git = {
      userEmail = "mike.kantzer@drizly.com";
      userName = "mkantzer-drizly"
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
        if $(echo "''${branch_name}" | rg  '(^[A-Za-z]{2,})-([0-9]*)-(.*)')
        then
          gh pr create \
            --assignee @me \
            --title "''${branch_title}" \
            --reviewer drizlyinc/hades \
            --reviewer drizlyinc/cloud_services \
            --body "TICKET: [''${branch_board}-''${branch_ticket}](https://drizly.atlassian.net/browse/''${branch_board}-''${branch_ticket})\n ''${pr_message}"
        else
          gh pr create \
            --assignee @me \
            --title "''${branch_title}" \
            --reviewer drizlyinc/hades \
            --reviewer drizlyinc/cloud_services \
            --body "TICKET: not found in branch name.\n ''${pr_message}"
        fi
      '';
    };
  };
}
