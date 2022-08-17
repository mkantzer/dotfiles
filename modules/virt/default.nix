{ config, pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    onBoot = "ignore";
  };
  programs.dconf.enable = true;
  environment.systemPackages = let
    virst = pkgs.callPackage ./virst {};
  in with pkgs; [
    virst virt-manager virt-viewer
  ];

  environment.etc = {
    "ovmf/OVMF_CODE.fd".source = config.virtualisation.libvirtd.qemu.package + "/share/qemu/edk2-x86_64-code.fd";
    "ovmf/OVMF_VARS.fd".source = config.virtualisation.libvirtd.qemu.package + "/share/qemu/edk2-i386-vars.fd";
  };

  environment.shellAliases = {
    qemu-boot-bios = "qemu-system-x86_64 -enable-kvm -cpu host -smp $(($(nproc)-4)) -m $(($(free -m | awk 'NR==2 { print $2 }')/2))M -vga virtio --display gtk,full-screen=on,show-cursor=on";
    qemu-boot = "qemu-boot-bios -drive if=pflash,format=raw,unit=0,readonly=on,file=/run/libvirt/nix-ovmf/OVMF_CODE.fd -drive if=pflash,format=raw,unit=1,file=OVMF_VARS.fd";
  };
}
