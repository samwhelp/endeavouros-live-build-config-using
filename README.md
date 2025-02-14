

# endeavouros-live-build-config-using




## Arch Wiki

* [pacman/Package signing](https://wiki.archlinux.org/title/Pacman/Package_signing)


``` ini
[endeavouros]
#SigLevel = Required DatabaseOptional
#SigLevel = Optional TrustAll
#SigLevel = Never
SigLevel = PackageRequired
Include = /etc/pacman.d/endeavouros-mirrorlist
```
