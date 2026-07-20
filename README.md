<img align="right" src="https://github.com/user-attachments/assets/51b8b510-5e6e-49ac-a952-e3d9e0f49342">

<br />

<p align="center">
  <img alt="apps" src="https://img.shields.io/badge/7.7k-apps_count?style=flat-square&label=apps%20icons&labelColor=%23504945&color=%23458588"/>
  <img alt="actions" src="https://img.shields.io/badge/3.3k-actions_count?style=flat-square&label=actions%20icons&labelColor=%23504945&color=%23689d6a"/>
  <img alt="panel" src="https://img.shields.io/badge/2.9k-panel_count?style=flat-square&label=panel%20icons&labelColor=%23504945&color=%23d79921"/>
  <img alt="places" src="https://img.shields.io/badge/3.5k-places_count?style=flat-square&label=places%20icons&labelColor=%23504945&color=%23b16286"/>
  <img alt="mimetypes" src="https://img.shields.io/badge/2.2k-mimetypes_count?style=flat-square&label=mimetypes&labelColor=%23504945&color=%23fe8019"/>
</p>

<br />

**Gruvbox Plus** is the icon pack for Linux, based on and inspired by [Suru++](https://github.com/gusbemacbe/suru-plus), [OneDark](https://github.com/adhec/one-dark-icons), [Gruvbox icon pack](https://store.kde.org/p/1327720/), [GruvboxMateria](https://github.com/FilipeMCruz/dotfiles/tree/master/current/icons/.local/share/icons/MateriaGruvbox), [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme), and original Breeze Dark from KDE.

**Gruvbox Plus** is using color scheme from [Gruvbox](https://github.com/morhetz/gruvbox).

<br />

Contents
--------

 - [Previews](#previews)
 - [Installation](#installation)
    - [Repositories](#repositories)
        - [Arch Linux](#arch-linux)
        - [NixOS](#nixos)
        - [Store](#store)
    - [Manual Installation](#manual-installation)
 - [Color Variants](#color-variants)
 - [Folder's Color](#folders-color)
    - [Script's Usage](#scripts-usage)
 - [Contribution](#contribution)
 - [Support](#support)
 - [License](#license)


Previews
--------

#### Apps:

![preview-apps](https://github.com/user-attachments/assets/3632a44b-241f-4672-b412-11d0addecae9)

#### Mimetypes:

![preview-miemetypes](https://github.com/user-attachments/assets/9176a373-7e9d-4314-8453-4c9c97352b9c)

Installation
------------

#### Repositories

##### Arch Linux

You can install Gruvbox Plus from AUR repository (maintained by [Diaoul](https://github.com/Diaoul)).

Release version - https://aur.archlinux.org/packages/gruvbox-plus-icon-theme

``` yay -S gruvbox-plus-icon-theme ```

Git version - https://aur.archlinux.org/packages/gruvbox-plus-icon-theme-git

``` yay -S gruvbox-plus-icon-theme-git ```

##### NixOS

Git version (maintained by [Eureka-cpu](https://github.com/eureka-cpu) and [Gliczy](https://github.com/Gliczy))

``` nix-env -iA nixos.gruvbox-plus-icons ```

> [!NOTE]
> Icon pack lacks of linux repositories maintainers. If You want to become one please create a new issue or make a pull request.

##### Store

Icons are available on [OpenDesktop](https://www.opendesktop.org/p/1961046/) store. You can manually download the archive from there or install it directly from Your system's icon manager settings. For example in KDE, open *System Settings* -> *Colors & Themes* -> *Icons* and click *"Get New..."* where You can search for Gruvbox Plus icons.

#### Manual installation

Go to the [releases page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases) and choose the zip file from the latest version.

Unpack the archive and copy the content to the *.local/share/icons* directory.

``` cp -rv Gruvbox-Plus-Dark Gruvbox-Plus-Light ~/.local/share/icons ```

If You want the latest icons, You would have to clone the whole repository:

``` git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git ```

and copy or soft link folders:

``` ln -s path/to/repository/Gruvbox-Plus-Dark ~/.local/share/icons/Gruvbox-Plus-Dark ```

``` ln -s path/to/repository/Gruvbox-Plus-Light ~/.local/share/icons/Gruvbox-Plus-Light ```

You could then just use

``` git pull ```

to download files added since the latest pull.


Color variants
--------------

There are two available variants:
- Gruvbox Dark - light symbolic icons for dark themes
- Gruvbox Light - dark symbolic icons for light themes

If You are KDE Plasma user You can safely use `Gruvbox Dark` variant. Monochrome (symbolic) icons will change automatically depending on the color scheme.

Folder's color
--------------

There are 24 colors that You can choose from:

![folders](https://github.com/user-attachments/assets/2a80368d-56e8-48b4-aeb4-67230fda428b)
![plasma](https://github.com/user-attachments/assets/aeb31474-725e-47b3-8218-2029643f4151)

**Plasma** is a a special variant for KDE Plasma users. You can change color straight from System Settings: Colors & Themes -> Colors.

If You are using different Desktop Environment You can easily change the folder's color with special script
(thanks to [akarzim](https://github.com/akarzim)). Script is located in the `scripts` folder
of the repository. You can [download it](https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases/download/v6.2.0/folders-color-chooser.sh) from release page as a seperate file.

#### Script's usage

Change script's permission:

`chmod +x folders-color-chooser.sh`

then run it (it will work from any location, it doesn't have to be placed in icons directory):

`./folders-color-chooser -c <color>`

More details:

```
Usage:
  folders-color-chooser [-c | --color=<color>] [-C | --reset-color]
  folders-color-chooser [-h | --help]
  folders-color-chooser [-l | --list]

Options:
  -c, --color=<color>   set the new folders color
  -C, --reset-color     reset folder color to plasma
  -h, --help            show this help
  -l, --list            list available colors
```

If You don't want to use the script, there is a folder called `folders` where You will find all color sets grouped separately. Just replace `places/scalable` directory with any chosen color.

Contribution
------------

If You'll find a missing icon please open a new issue and give as much information as You can:
1. If it's a program, please provide name and link to the website or repository page.
2. If You can, find a link to the original svg icon.
3. Link to .desktop file (located in .local/share/applications or /usr/share/applications folder) and output of the xprop.

If You want to create new icons Yourself or modify existing ones please read how to do that
[HERE](https://github.com/SylEleuth/gruvbox-plus-icon-pack/tree/master/templates).

If You have any questions, suggestions or propositions please use [Discussions page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/discussions).

Support
-------

If You downloaded the icon pack or if You just liked it please star the repository for visibility and as appreciation gesture.

License
-------
Gruvbox Plus icon theme is a free and open source project distributed under the terms of the GNU General Public License, version 3. See the [`LICENSE`](LICENSE) file for details.

You can find additional licenses [here](https://github.com/SylEleuth/gruvbox-plus-icon-pack/blob/master/Licenses).
