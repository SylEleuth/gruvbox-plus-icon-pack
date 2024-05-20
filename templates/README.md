*(last template README edit - 2nd December 2023)*

*(last template icons edit - 23rd April 2024)*

If you want to contribute to the project by modifing icons that has broken or outdated
elements or just by creating a new one, You are more than welcome. You would have to clone
repository and rename a branch to the name of the icon you want to create/modify. Then
create a pull request and wait for a review.

Before You start doing anything Please read below information and rules about creating and
modifying icons. Those information are related to application icons only.

Sizes
-----

There are 3 different app icons. In folders "called" 16 and "symbolic" icons have size,
as its name suggests, 16x16 pixels. In "scalable" folder icons have 256x256 pixels.
In this case "icon" means that the whole front page has that dimensions. Elements within that
page can be smaller.

Positioning
-----------

16 icons should have 1px padding around when the element is proportional (if it's round or
rectangular) with the exception when the element is wide. Then it can touch the sides of
the page (left and right), but only if there is large free space on top and bottom. All depends on the
specific case. The reason behind why 16px icons are actually 14px icons is because often
they are used in panels and just to be safe it would be better if they are a little bit
smaller. You might notice that many icons in 16 folder are against that rule. It's because
original Suru++ icon pack that I used to create Gruvbox Plus had already that icons. Some
of theme were full 16 and some had 1px padding. So I decided to make one rule for all of
them (or at least a new icons). If You believe that icon You are using doesn't look good
with padding and should be a full 16, please open an issue and we can discuss it.

Symbolic folder is a copy of the 16 folder. Name should have added "-symbolic" at the end,
e.g. "icon-symbolic.svg".

Scalable icons don't have specific rules how big elements should be placed or what padding
to use. Everything depends on the specific icon. But elements shouldn't be close to the
base edges and some padding should be used. Also icon should be centered in relation to
background.

Colors
------

Colors used in the pack are all come from Gruvbox theme palette. Please don't use any other
colors even if they look similar or are close to ones in the palette. Gradient is accepted.
If You are not sure please look at the official [Gruvbox page](https://github.com/morhetz/gruvbox).

You can use colors from dark mode and light mode palette. If icon doesn't have many colors
it's always safer to use dark palette, but it all depends on original icon's colors and
background that You are going to use.

##### Dark mode palette
![dark mode](https://camo.githubusercontent.com/410b3ab80570bcd5b470a08d84f93caa5b4962ccd994ebceeb3d1f78364c2120/687474703a2f2f692e696d6775722e636f6d2f776136363678672e706e67)

##### Light mode palette

![light mode](https://camo.githubusercontent.com/d080d9c204408ef06b862b76bc795f930b3a9b1be4c5d2de149f1d8eb765b660/687474703a2f2f692e696d6775722e636f6d2f3439714b7959572e706e67)

Base for scalable icons
-----------------------

Before You start with a new icon please use one of the base templates. Those bases are
a little bit different than most of the backgrounds used in icons in "scalable" folder. It's
because those icons weren't make with the bright background in thought which will be
implemented in the future (or maybe it's already live). Old icons would require rework but
it's too much work at the moment. It's not priority.

#### Dark base

You can choose from two options:

1. plain with gradient of two colors (both colors are the same by default),

![base-dark-plain](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/fbdac7fb-9a44-4237-81f7-45d7b23716f1)

2. and pattern with gradient.

![base-dark-pattern](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/8dc3b5ee-a876-4371-b2b5-ea1dcd0ad57f)

#### Bright base

Also two options available:

1. plain with gradient of two colors (both colors are the same by default),

![base-bright-plain](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/b9358e7b-c8b4-49d3-ac8b-8810843c0702)

2. and pattern with gradient.

![base-bright-pattern](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/cde8c069-0351-400d-ba3c-cbc8ddd0fb22)

In both cases pattern is very subtle and You can modify it by changing opacity, moving it,
removing one of the elements or adding a new one.

It's recommended to use plain base. If you want to make gradient just change color of one
of the stops. You can add a new one (or more) and even change direction but don't remnter
it or change to solid. Also do not modify border, only the main background.

If You want to make different color background You can use dark or bright base, it doesn't
matter. Both are the same with the exception of the color. Please refer to the other
icons in "scalable" folder for examples how to use the background base and colors.

Saving
------

If You are using Inkscape please save icons as "Optimised SVG" with these options:

![Screenshot_20230608_122741](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/ee83e388-bf90-4676-8660-6c6cae86013f)
![Screenshot_20230517_162114](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/df3ee07b-0676-4c5f-8db8-46e34507df97)
![Screenshot_20240520_121905](https://github.com/SylEleuth/gruvbox-plus-icon-pack/assets/33354262/b388d41f-4721-4edb-b455-6d38d0fa5c96)

If You are not using Inkscape please use [Scour](https://github.com/scour-project/scour) with options below:

```--set-precision=4 --renderer-workaround --strip-xml-prolog --remove-metadata --enable-comment-stripping --remove-descriptive-elements --nindent=2 --enable-id-stripping --protect-ids-list="current-color-scheme"```

Other forms of contribution
---------------------------

If you are not familiar with Inkscape/xml or You don't know how to design icons but You want to help to
grow the project there are other areas that require attention.

1. If You know bash You could help creating scripts like installers and color changer for
   places icons.

2. The project doesn't need extended documentation but You can always propose some additions or changes
   to existing information texts like this one.
