{ config, lib, pkgs, ... }:

{
  programs.fish = {
    enable = true;
    plugins = [
      {
        name = "tide";
        src = pkgs.fetchFromGitHub {
          owner = "IlanCosman";
          repo = "tide";
          rev = "v5.3.0";
          sha256 = "/r+vaJIQ+yi7YDN7AThRKWDimdDuVmeYcg7t0GzebZE=";
        };
      }
    ];

    functions = { };

    shellAliases = with pkgs; {
      # Nix related
      drb = "darwin-rebuild build --flake ~/.config/dotfiles";
      drs = "darwin-rebuild switch --flake ~/.config/dotfiles";
      flakeup = "nix flake update ~/.config/dotfiles";
      nb = "nix build";
      nd = "nix develop";
      nf = "nix flake";
      nr = "nix run";
      ns = "nix search";

      # Other
      ".." = "cd ..";
      ":q" = "exit";
      cat = "${bat}/bin/bat";
      du = "${du-dust}/bin/dust";
      g = "${gitAndTools.git}/bin/git";
      la = "ll -a";
      ll = "ls -l --time-style long-iso --icons";
      ls = "${exa}/bin/exa";
      tb = "toggle-background";
      gitroot = "cd $(g rev-parse --show-toplevel)";

      # Kubernetes Stuff
      kc = "kubectl";
      kx = "kubectx";
      kn = "kubens";

      # Terraform Stuff
      tf = "terraform";
      tfw = "terraform workspace";
      tfws = "terraform workspace select";
      tfwl = "terraform workspace list";
      tg = "terragrunt";

      # Work aliases:
      "d-sso" = "aws sso login --profile meta";
      "d-oprod" = "export AWS_PROFILE=old-prod";
      "d-devclusters" = "export AWS_PROFILE=dev-clusters";
      "d-prodclusters" = "export AWS_PROFILE=prod-clusters";
      "d-registry" = "export AWS_PROFILE=registry";
    };

    # Configuration that should be above `loginShellInit` and `interactiveShellInit`.
    # For loop needed to address bug where $PATH is not properly set for fish:
    # https://github.com/LnL7/nix-darwin/issues/122
    shellInit = ''
      for p in /run/current-system/sw/bin
        if not contains $p $fish_user_paths
          set -g fish_user_paths $p $fish_user_paths
        end
      end

    '';

    interactiveShellInit = ''
      set -g fish_greeting ""
      ${pkgs.thefuck}/bin/thefuck --alias | source

      # Set Fish colors that aren't dependant the `$term_background`.
      set -g fish_color_quote        cyan      # color of commands
      set -g fish_color_redirection  brmagenta # color of IO redirections
      set -g fish_color_end          blue      # color of process separators like ';' and '&'
      set -g fish_color_error        red       # color of potential errors
      set -g fish_color_match        --reverse # color of highlighted matching parenthesis
      set -g fish_color_search_match --background=yellow
      set -g fish_color_selection    --reverse # color of selected text (vi mode)
      set -g fish_color_operator     green     # color of parameter expansion operators like '*' and '~'
      set -g fish_color_escape       red       # color of character escapes like '\n' and and '\x70'
      set -g fish_color_cancel       red       # color of the '^C' indicator on a canceled command


      # # Tide Configuration
      # set  -u  tide_aws_bg_color                       303030
      # set  -u  tide_aws_color                          FF9900
      # set  -u  tide_aws_icon                           \uf270
      # set  -u  tide_character_color                    5FD700
      # set  -u  tide_character_color_failure            FF0000
      # set  -u  tide_character_icon                     \u276f
      # set  -u  tide_character_vi_icon_default          \u276e
      # set  -u  tide_character_vi_icon_replace          \u25b6
      # set  -u  tide_character_vi_icon_visual           V
      # set  -u  tide_chruby_bg_color                    303030
      # set  -u  tide_chruby_color                       B31209
      # set  -u  tide_chruby_icon                        \ue23e
      # set  -u  tide_cmd_duration_bg_color              303030
      # set  -u  tide_cmd_duration_color                 87875F
      # set  -u  tide_cmd_duration_decimals              0
      # set  -u  tide_cmd_duration_icon                  \x1d
      # set  -u  tide_cmd_duration_threshold             3000
      # set  -u  tide_context_always_display             false
      # set  -u  tide_context_bg_color                   303030
      # set  -u  tide_context_color_default              D7AF87
      # set  -u  tide_context_color_root                 D7AF00
      # set  -u  tide_context_color_ssh                  D7AF87
      # set  -u  tide_docker_bg_color                    303030
      # set  -u  tide_docker_color                       2496ED
      # set  -u  tide_docker_default_contexts            default\x1ecolima
      # set  -u  tide_docker_icon                        \uf308
      # set  -u  tide_git_bg_color                       303030
      # set  -u  tide_git_bg_color_unstable              303030
      # set  -u  tide_git_bg_color_urgent                303030
      # set  -u  tide_git_color_branch                   5FD700
      # set  -u  tide_git_color_conflicted               FF0000
      # set  -u  tide_git_color_dirty                    D7AF00
      # set  -u  tide_git_color_operation                FF0000
      # set  -u  tide_git_color_staged                   D7AF00
      # set  -u  tide_git_color_stash                    5FD700
      # set  -u  tide_git_color_untracked                00AFFF
      # set  -u  tide_git_color_upstream                 5FD700
      # set  -u  tide_git_icon                           \x1d
      # set  -u  tide_git_truncation_length              24
      # set  -u  tide_go_bg_color                        303030
      # set  -u  tide_go_color                           00ACD7
      # set  -u  tide_go_icon                            \ue627
      # set  -u  tide_java_bg_color                      303030
      # set  -u  tide_java_color                         ED8B00
      # set  -u  tide_java_icon                          \ue256
      # set  -u  tide_jobs_bg_color                      303030
      # set  -u  tide_jobs_color                         5FAF00
      # set  -u  tide_jobs_icon                          \uf013
      # set  -u  tide_kubectl_bg_color                   303030
      # set  -u  tide_kubectl_color                      326CE5
      # set  -u  tide_kubectl_icon                       \u2388
      # set  -u  tide_left_prompt_frame_enabled          false
      # set  -u  tide_left_prompt_items                  pwd\x1egit\x1enewline\x1echaracter
      # set  -u  tide_left_prompt_prefix                 \ue0ba
      # set  -u  tide_left_prompt_separator_diff_color   \ue0b0
      # set  -u  tide_left_prompt_separator_same_color   \u2571
      # set  -u  tide_left_prompt_suffix                 \ue0bc
      # set  -u  tide_node_bg_color                      303030
      # set  -u  tide_node_color                         44883E
      # set  -u  tide_node_icon                          \u2b22
      # set  -u  tide_os_bg_color                        303030
      # set  -u  tide_os_color                           EEEEEE
      # set  -u  tide_os_icon                            \uf179
      # set  -u  tide_php_bg_color                       303030
      # set  -u  tide_php_color                          617CBE
      # set  -u  tide_php_icon                           \ue608
      # set  -u  tide_private_mode_bg_color              303030
      # set  -u  tide_private_mode_color                 FFFFFF
      # set  -u  tide_private_mode_icon                  \ufaf8
      # set  -u  tide_prompt_add_newline_before          true
      # set  -u  tide_prompt_color_frame_and_connection  6C6C6C
      # set  -u  tide_prompt_color_separator_same_color  949494
      # set  -u  tide_prompt_icon_connection             \x20
      # set  -u  tide_prompt_min_cols                    34
      # set  -u  tide_prompt_pad_items                   true
      # set  -u  tide_pwd_bg_color                       303030
      # set  -u  tide_pwd_color_anchors                  00AFFF
      # set  -u  tide_pwd_color_dirs                     0087AF
      # set  -u  tide_pwd_color_truncated_dirs           8787AF
      # set  -u  tide_pwd_icon                           \x1d
      # set  -u  tide_pwd_icon_home                      \x1d
      # set  -u  tide_pwd_icon_unwritable                \uf023
      # set  -u  tide_pwd_markers                        \x2ebzr\x1e\x2ecitc\x1e\x2egit\x1e\x2ehg\x1e\x2enode\x2dversion\x1e\x2epython\x2dversion\x1e\x2eruby\x2dversion\x1e\x2eshorten_folder_marker\x1e\x2esvn\x1e\x2eterraform\x1eCargo\x2etoml\x1ecomposer\x2ejson\x1eCVS\x1ego\x2emod\x1epackage\x2ejson
      # set  -u  tide_right_prompt_frame_enabled         false
      # set  -u  tide_right_prompt_items                 status\x1ecmd_duration\x1econtext\x1ejobs\x1enode\x1evirtual_env\x1erustc\x1ejava\x1ephp\x1echruby\x1ego\x1ekubectl\x1etoolbox\x1eterraform\x1eaws\x1etime
      # set  -u  tide_right_prompt_prefix                \ue0ba
      # set  -u  tide_right_prompt_separator_diff_color  \ue0b2
      # set  -u  tide_right_prompt_separator_same_color  \u2571
      # set  -u  tide_right_prompt_suffix                \ue0bc
      # set  -u  tide_rustc_bg_color                     303030
      # set  -u  tide_rustc_color                        F74C00
      # set  -u  tide_rustc_icon                         \ue7a8
      # set  -u  tide_shlvl_bg_color                     303030
      # set  -u  tide_shlvl_color                        d78700
      # set  -u  tide_shlvl_icon                         \uf120
      # set  -u  tide_shlvl_threshold                    1
      # set  -u  tide_status_bg_color                    303030
      # set  -u  tide_status_bg_color_failure            303030
      # set  -u  tide_status_color                       5FAF00
      # set  -u  tide_status_color_failure               D70000
      # set  -u  tide_status_icon                        \u2714
      # set  -u  tide_status_icon_failure                \u2718
      # set  -u  tide_terraform_bg_color                 303030
      # set  -u  tide_terraform_color                    844FBA
      # set  -u  tide_terraform_icon                     \x1d
      # set  -u  tide_time_bg_color                      303030
      # set  -u  tide_time_color                         5F8787
      # set  -u  tide_time_format                        \x25T
      # set  -u  tide_toolbox_bg_color                   303030
      # set  -u  tide_toolbox_color                      613583
      # set  -u  tide_toolbox_icon                       \u2b22
      # set  -u  tide_vi_mode_bg_color_default           303030
      # set  -u  tide_vi_mode_bg_color_replace           303030
      # set  -u  tide_vi_mode_bg_color_visual            303030
      # set  -u  tide_vi_mode_color_default              87af00
      # set  -u  tide_vi_mode_color_replace              d78700
      # set  -u  tide_vi_mode_color_visual               5f87d7
      # set  -u  tide_vi_mode_icon_default               DEFAULT
      # set  -u  tide_vi_mode_icon_replace               REPLACE
      # set  -u  tide_vi_mode_icon_visual                VISUAL
      # set  -u  tide_virtual_env_bg_color               303030
      # set  -u  tide_virtual_env_color                  00AFAF
      # set  -u  tide_virtual_env_icon                   \ue73c

      # Don't have extra delete's exit shell
      # https://github.com/fish-shell/fish-shell/issues/5593#issuecomment-458242921
      bind --erase --preset \cd
      bind \cd delete-char
    '';
  };
}
