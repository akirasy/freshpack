# almost-steamOS

## Idea
- Steam client full-screen mode is quite good. It includes basic `logout-reboot-shutdown` operation and a `web-browser`. Actually thats all I really need during gaming.
- So why don't I build a minimal-debian installation and only install steam-client (along with only required package).
- It's almost-steamOS.
- I've tried it on my desktop, and it works! And satisfied too.

## Usage
- Install minimal [Debian Buster](https://www.debian.org/distrib/)
- Then execute:
```
sudo bash install.sh
```
## Tips & Tricks

### Autologin at boot [source info](https://superuser.com/questions/969923/automatic-root-login-in-debian-8-0-console-only)
- This just follows from the agetty manual page
- Edit the file `/lib/systemd/system/getty@.service` and change the line (append `-a username`)
```
  ExecStart=-/sbin/agetty --noclear %I $TERM
```
to
```
  ExecStart=-/sbin/agetty --noclear -a username %I $TERM
```

### Autostart script on login [source info](https://wiki.archlinux.org/index.php/Xinit#Autostart_X_at_login)
- Copy `/etc/skel/.bash_profile` to `~/.bash_profile`.
- Append these code to `~/.bash_profile`.
```
if systemctl -q is-active graphical.target && [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec bash ~/almost-steamOS/autostart.sh
fi
```

### Enable local repository to install in offline host [source info](https://manpages.debian.org/buster/apt/sources.list.5.en.html#EXAMPLES)
- Create a folder named `/home/steam/localdeb/` and put downloaded deb files there.
- Create apt source file at `/etc/apt/sources.list.d/localsteamos.list`
```
sudo mkdir -p /etc/apt/sources.list.d/
sudo echo 'deb file:/home/steam/localdeb stable main contrib non-free' > /etc/apt/sources.list.d/localsteamos.list
```

## to-do
- [X] describe `how to autologin` in `README.md`
- [ ] openbox `config` files
- [ ] config file to initrc, start openbox
- [X] installer
- [X] autostart dialog
- [ ] update through github (this repo)

## other project
- [ ] offline installer
  - [X] how to put deb
  - [ ] download `deb` files in online host
  - [ ] script to move downloaded deb to `/home/steam/localdeb/`
