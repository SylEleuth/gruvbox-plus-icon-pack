# <div align="center">Gruvbox Plus Icon Pack</div>

![compilation](https://user-images.githubusercontent.com/33354262/149584585-8d793794-58b5-44b1-8464-83f125afbb62.jpg)
<br/><br/>

GruvboxPlus is an icon pack for Linux (KDE, XFCE, Gnome) based on and inspired by:

* [Suru++](https://github.com/gusbemacbe/suru-plus)
* [OneDark](https://github.com/adhec/one-dark-icons)
* [Gruvbox icon pack](https://store.kde.org/p/1327720/)
* [GruvboxMateria](https://github.com/FilipeMCruz/dotfiles/tree/master/current/icons/.local/share/icons/MateriaGruvbox)
* and original Breeze Dark from KDE.

GruvboxPlus is using color scheme from [Gruvbox](https://github.com/morhetz/gruvbox), both dark and light color palette.

Icons were created with the thought of dark backgrounds, so it's recommend to use dark themes.
<br/><br/>

### <div align="center">Applications example:</div>
![apps](https://user-images.githubusercontent.com/33354262/149584581-828c6035-1e30-4577-ba34-accbcdbd5d59.jpg)

### <div align="center">Symbols example:</div>
![apps16](https://user-images.githubusercontent.com/33354262/149584583-7b56a96f-533e-413b-8fa7-3f5f6d1e9fe6.jpg)
<br/><br/>

## Download

You can download Icon pack from different sources:

1. Go to the releases page [HERE](https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases) and choose the zip file from the latest version.

2. Download the icon pack from Your system's icon manager settings. For example in KDE, open Settings, Appearance/Icons and click "Get New Icons" where You can search for Gruvbox Plus.

3. Download latest package from [Pling](https://www.pling.com/p/1961046/) or [KDE Store](https://store.kde.org/p/1961046)

4. If You want the latest icons You have to clone the whole repository (except few additional files it doesn't contain any extra folders and is/will be similar to official release package).

    ``` git clone https://github.com/SylEleuth/gruvbox-plus-icon-pack.git ```

    **WARNING**: Do not use "Download ZIP" under "Code" button. Compression applied there will remove soft links of the icons, which will ruin big part of the pack.

## Installation

If You downloaded the zip file from [releases page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/releases).

Copy the whole folder to Your home directory.

``` cp -rv gruvbox-plus-icon-pack-master ~/.local/share/icons/GruvboxPlus ```

or soft link git repository:

``` ln -s ~/Git/gruvbox-plus-icon-pack-master ~/.local/share/icons/GruvboxPlus ```

You could then just use

``` git pull ```

to download files added since the latest pull.

## Contribution

If You'll find a missing icon please open a new issue and give as much information as You can:
1. If it's a program, please provide name and link to the website or repository page.
2. If You can, find a link to the original svg icon.
3. Output of the ```xprop``` and/or link to .desktop file.

If You have any questions, suggestions or propositions not related to a specific icon please
use [Discussions page](https://github.com/SylEleuth/gruvbox-plus-icon-pack/discussions) for it.

## TODO

- [ ] Add icons to Arch User Repository
- [ ] Add installation script
- [ ] Add script to easily change folders/places colors
- [ ] Create dark icons for bright themes

## Support

If You downloaded the icon pack or if You just liked it please star the repository for visibility and as appreciation gesture.

## License

* GPL3 © 2021-2023 [Gruvbox Plus](https://github.com/SylEleuth/gruvbox-plus-icon-pack) by [Sylwia Ptasinska](https://github.com/SylEleuth)
* CC BY-SA/GPL3 © 2018-2019 [Suru Icons](https://github.com/snwh/suru-icon-theme) by [Sam Hewitt](https://github.com/snwh).
* GPL3 © 2018-2019 [Suru++ Ubuntu](https://github.com/Bonandry/suru-plus) by [Andrea Bonanni](https://github.com/Bonandry) and Gustavo Costa.
* GPL3 © 2018-2019 Suru++ 25 by Gustavo Costa.
* GPL3 © [Papirus](https://github.com/PapirusDevelopmentTeam/) by [Alexey Varfolomeev](https://github.com/varlesh).
* GPL3 © [Numix](https://github.com/numixproject/numix-icon-theme) by Numix Team.
* GPL3/MIT © 2015-2019 [La Capitaine](https://github.com/keeferrourke/la-capitaine-icon-theme) by [Keefer Rourke](https://github.com/keeferrourke).
* GPL3 © [One Dark](https://github.com/adhec/one-dark-icons) by [Adhe](https://github.com/adhec)
* MIT © Icons 8 by Gravit Designer
* MIT © Twemoji by Twitter Team.

