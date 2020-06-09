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
### Enable autologin in [LightDM](https://packages.debian.org/buster/lightdm)
Edit `/etc/lightdm/lightdm.conf` to these config.
```
autologin-guest=false
autologin-user={username}
autologin-user-timeout=0
```

## To-do
- [x] openbox & tint2 `config` files
- [x] installer
