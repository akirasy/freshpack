# Initialization of freshly formatted OS

## Xigmatek-Rig
### Debian
- Debian OS does not include non-free packages. Fresh install require offline packages as below.
  - `firmware-misc-nonfree.deb` [Download](http://http.us.debian.org/debian/pool/non-free/f/firmware-nonfree/firmware-misc-nonfree_20190114-2_all.deb)
  - `firmware-realtek.deb` [Download](http://http.us.debian.org/debian/pool/non-free/f/firmware-nonfree/firmware-realtek_20190114-2_all.deb)
- Got issue in using wifi due to well documented bug of `NetworkManager.conf`. Execute `wifiFix.sh` first prior to `install.sh`. 
- Graphic driver installation require user prompt.
### Ubuntu
- Installing ubuntu doesn't make much hassle.
- Proceed with `install.sh`.

## HP-Mini
### i3 window manager
- Get a minimal Debian OS installation, then proceed to installation of i3wm.
- Debian OS does not include non-free packages. Fresh install require offline packages as below.
  - `firmware-realtek.deb` [Download](http://http.us.debian.org/debian/pool/non-free/f/firmware-nonfree/firmware-realtek_20190114-2_all.deb)
### Debian OS
- So far so good with default package.

## Macbook-Pro
### Ubuntu
- On fresh install, wifi hardware is not recognized. Please install these packages first to resolve this problem
  - `bcmwl-kernel-source`[Download](http://ubuntu.cs.utah.edu/ubuntu/pool/restricted/b/bcmwl/bcmwl-kernel-source_6.30.223.271+bdcom-0ubuntu4_amd64.deb)
  - `dkms`[Download](http://ubuntu.cs.utah.edu/ubuntu/pool/main/d/dkms/dkms_2.3-3ubuntu9_all.deb)
  - `libc6-dev`[Download](http://ubuntu.cs.utah.edu/ubuntu/pool/main/g/glibc/libc6-dev_2.27-3ubuntu1_amd64.deb)
  - `linux-libc-dev`[Download](http://security.ubuntu.com/ubuntu/pool/main/l/linux/linux-libc-dev_4.15.0-72.81_amd64.deb)

## Raspberry Pi
### i3 window manager
- Not much issue with hardware-software. Proceed with `install.sh`.
### Raspbian 
- Perfectly done by RaspberryPi team. No issue at all. Proceed with `install.sh`.

# Favorite 3rd-party packages
## grub2-themes
- Beautify grub screeen with cutomization. I've found some good repository by [vinceliuice](https://github.com/vinceliuice) on github.
- Go to repository --> Links: [grub2-themes](https://github.com/vinceliuice/grub2-themes).
- There is an easy installation bash provided.
## GNOME AppFolder Manager
- This is a useful package in putting app into folders.
  - `gnome-appfolder-manager`[Download](https://github.com/muflone/gnome-appfolders-manager/releases/download/0.3.1/gnome-appfolders-manager_0.3.1-1_all.deb)
## Spotify
- Spotify for Linux is also released as a Debian package. 
- Instructions are as below. GPG key might change over time, kindly refer to the [official page](https://www.spotify.com/us/download/linux) if installation failed.
```
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client
```
## Etcher
- Etcher is a powerful OS image flasher built with web technologies to ensure flashing an SDCard or USB drive is a pleasant and safe experience.
- Instructions are as below. GPG key might change over time, kindly refer to the [official page](https://github.com/balena-io/etcher) if installation failed.
```
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
sudo apt-get update
sudo apt-get install balena-etcher-electron
```

# Further optimization
- [X] putting ideas here
- [X] replace `*.deb` files to downloadable and working links
- [ ] better `private ppa` installation script
