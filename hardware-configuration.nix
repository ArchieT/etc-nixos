# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "uhci_hcd" "ehci_pci" "ata_piix" "pata_jmicron" "firewire_ohci" "usb_storage" "usbhid" "floppy" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/66453755-8ebc-4849-920a-6f96fdc6b1c3";
      fsType = "ext4";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/638cd77a-8b6b-431d-a922-376cb347dc12"; }
    ];

}
