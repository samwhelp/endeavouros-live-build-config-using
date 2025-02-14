

# endeavouros-live-build-config-using




## Subject

* [Refer](#refer)
* [Prepare](#prepare)
* [Add Keyring](#add-keyring)
* [Config endeavouros-mirrorlist](#config-endeavouros-mirrorlist)
* [Config pacman.conf](#config-pacmanconf)



## Refer

* Arch Wiki / [pacman/Package signing](https://wiki.archlinux.org/title/Pacman/Package_signing)
* GitHub / endeavouros-team / iso-autobuild / [add-EndeavourOS](https://github.com/endeavouros-team/iso-autobuild/blob/main/add-EndeavourOS)
* GitHub / endeavouros-team / PKGBUILDS / [endeavouros-mirrorlist](https://github.com/endeavouros-team/PKGBUILDS/blob/master/endeavouros-mirrorlist/endeavouros-mirrorlist)
* GitHub / endeavouros-team / PKGBUILDS / [endeavouros-keyring](https://github.com/endeavouros-team/PKGBUILDS/tree/master/endeavouros-keyring)





## Prepare

> run

``` sh

sudo pacman -Sy -noconfirm

sudo pacman -S --needed --noconfirm archlinux-keyring curl wget

```




## Add Keyring

> run

``` sh

sudo pacman-key --init

sudo pacman-key --recv-key 0F20FADC599D1C46EB556455AED8858E4B9813F1 --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key 0F20FADC599D1C46EB556455AED8858E4B9813F1

sudo pacman-key --recv-key 497AF50C92AD2384C56E1ACA003DB8B0CB23504F --keyserver keyserver.ubuntu.com && sudo pacman-key --lsign-key 497AF50C92AD2384C56E1ACA003DB8B0CB23504F

```




## Config endeavouros-mirrorlist

edit `/etc/pacman.d/endeavouros-mirrorlist`

``` sh

sudo curl -fLo '/etc/pacman.d/endeavouros-mirrorlist' --create-dirs 'https://raw.githubusercontent.com/endeavouros-team/PKGBUILDS/master/endeavouros-mirrorlist/endeavouros-mirrorlist'

```




## Config pacman.conf

> edit `/etc/pacman.conf`

``` ini
[endeavouros]
#SigLevel = Required DatabaseOptional
#SigLevel = Optional TrustAll
#SigLevel = Never
SigLevel = PackageRequired
Include = /etc/pacman.d/endeavouros-mirrorlist
```
