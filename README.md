<!-- ![gruvbox_plus_logo8i](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/a8bdd956-c198-4d7c-abdc-60c22e6c3639) -->

<!-- <br /> -->

<img align="right" src="https://github.com/user-attachments/assets/51b8b510-5e6e-49ac-a952-e3d9e0f49342">

**Gruvbox Plus** is the icon pack for Linux, based on and inspired by:

* [Suru++](https://github.com/gusbemacbe/suru-plus)
* [OneDark](https://github.com/adhec/one-dark-icons)
* [Gruvbox icon pack](https://store.kde.org/p/1327720/)
* [GruvboxMateria](https://github.com/FilipeMCruz/dotfiles/tree/master/current/icons/.local/share/icons/MateriaGruvbox)
* [Papirus](https://github.com/PapirusDevelopmentTeam/papirus-icon-theme)
* and original Breeze Dark from KDE.

**Gruvbox Plus** is using color scheme from [Gruvbox](https://github.com/morhetz/gruvbox).

<!-- <details><summary><b>Showcase:</b></summary> -->
<!-- </details> -->

Download
--------

You can download Icon pack from different sources:

1. Go to the [releases page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases) and choose the zip file from the latest version.

2. Download the icon pack from Your system's icon manager settings. For example in KDE, open System Settings -> Colors & Themes -> Icons and click "Get New..." where You can search for Gruvbox Plus.

3. Download latest package from [Pling](https://www.pling.com/p/1961046/) or [KDE Store](https://store.kde.org/p/1961046)

4. If You want the latest icons You have to clone the whole repository:

    ``` git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git ```

Installation
------------

If You downloaded the zip file from [releases page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases).

Unpack it and copy content of the folder to Your home/.local/share/icons/ directory.

``` cp -rv Gruvbox-Plus-Dark ~/.local/share/icons ```

or soft link git repository:

``` ln -s path/to/repository/Gruvbox-Plus-Dark ~/.local/share/icons/Gruvbox-Plus-Dark ```

You could then just use

``` git pull ```

to download files added since the latest pull.

<!-- #### Arch User Repository -->
<!-- There are [AUR](https://aur.archlinux.org/) packages, maintained by [Diaoul](https://github.com/Diaoul). -->

<!-- ``` yay -S gruvbox-plus-icon-theme ``` - release version -->

<!-- ``` yay -S gruvbox-plus-icon-theme-git ``` - git version -->

Color variants
--------------

There are two available variants:
- Gruvbox Dark - light symbolic icons for dark themes
- Gruvbox Light - dark symbolic icons for light themes

If You are KDE Plasma user You can safely use `Gruvbox Dark` variant. Monochrome (symbolic) icons
will change automatically depending on the color scheme.

Folder's color
--------------

There are 24 colors that You can choose from:

![folders](https://github.com/user-attachments/assets/962cc3d0-cf1b-45cd-8d9a-60b44c01fd00)

![plasma](https://github.com/user-attachments/assets/ba2b2fd0-54b2-4561-bca3-6c9cf6c02241)

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

If You don't want to use the script, there is a folder called `folders` where You will find
all color sets grouped separately. Just replace `places/scalable` directory with any chosen
color.

Contribution
------------

If You'll find a missing icon please open a new issue and give as much information as You can:
1. If it's a program, please provide name and link to the website or repository page.
2. If You can, find a link to the original svg icon.
3. Link to .desktop file (located in .local/share/applications or /usr/share/applications folder) and output of the xprop.

If You want to create new icons Yourself or modify existing ones please read how to do that
[HERE](https://github.com/SylEleuth/gruvbox-plus-icon-pack/tree/master/templates).

If You have any questions, suggestions or propositions please use [Discussions page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/discussions).

##### WANTED!!!

Icon pack lacks of linux repositories maintainers. Any repository. So if You are willing
to step up to the task Your service will be much appreciated.

Support
-------

If You downloaded the icon pack or if You just liked it please star the repository for visibility and as appreciation gesture.

License
-------

* GPL3 © 2021-2024 [Gruvbox Plus](https://github.com/SylEleuth/gruvbox-plus-icon-pack) by [Sylwia Ptasinska](https://github.com/SylEleuth).
* CC BY-SA/GPL3 © 2018-2019 [Suru Icons](https://github.com/snwh/suru-icon-theme) by [Sam Hewitt](https://github.com/snwh).
* GPL3 © 2018-2019 [Suru++ Ubuntu](https://github.com/Bonandry/suru-plus) by [Andrea Bonanni](https://github.com/Bonandry) and Gustavo Costa.
* GPL3 © 2018-2019 Suru++ 25 by Gustavo Costa.
* GPL3 © [Tela](https://github.com/vinceliuice/Tela-icon-theme) by [Vince Liuice](https://github.com/vinceliuice)
* GPL3 © [Papirus](https://github.com/PapirusDevelopmentTeam/) by [Alexey Varfolomeev](https://github.com/varlesh).
* GPL3 © [Numix](https://github.com/numixproject/numix-icon-theme) by Numix Team.
* GPL3/MIT © 2015-2019 [La Capitaine](https://github.com/keeferrourke/la-capitaine-icon-theme) by [Keefer Rourke](https://github.com/keeferrourke).
* GPL3 © [One Dark](https://github.com/adhec/one-dark-icons) by [Adhe](https://github.com/adhec)
