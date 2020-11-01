# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "ehci_pci" "ahci" "usb_storage" "sd_mod" "sr_mod" "rtsx_usb_sdmmc" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/0bc88cdc-ca39-42cb-b2a0-c5699465d146";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/84ef289c-42b9-4609-a3a7-4afbd583d801"; }
    ];

  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
}
