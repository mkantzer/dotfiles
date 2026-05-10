{
  config,
  lib,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    initContent = lib.mkOrder 1000 ''
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
    '';
  };
}
