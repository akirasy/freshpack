# Installation walkthrough

## enable wifi-dongle
Install required package
`network-manager`
Depends:
```
i forgot to list it down
```
Install package for wifi-dongle
`firmware-realtek`
`firware-misc-nonfree`

## enable config
run command using sudo
```
dpkg --add-architecture i386
sudo apt update
```

## minimal package
```
intel-microcode
lxterminal
xorg
openbox
pavucontrol
pulseaudio
software-properties-common
```

## graphic driver
Need to enable 32-bit library first
```
nvidia-driver
nvidia-driver-libs-i386
```

## appearance package
```
feh
```

## utility package
```
xfe
rsync
vim
git
printer-driver-all
simple-scan
```

## utility-extra package
```
gparted
```

## game package
```
steam
```

## office package
```
evince
libreoffice
```

## developer package
```
python-tk
```
