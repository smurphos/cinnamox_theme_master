Cinnamox Theme Master
=====

This repository contains the base templates and scripts used to make the Cinnamon element of the eight [Cinnamox Themes](https://github.com/smurphos/cinnamox_themes/releases).

Metacity, GTK2, GTK3.18 and GTK3.20 elements are built using tools at [Cinnamox-gtk-theme](https://github.com/smurphos/cinnamox-gtk-theme) a fork of [Oomox-gtk-theme](https://github.com/actionless/oomox-gtk-theme).

Cinnamox themes are compatible with Cinnamon 3.2+, GTK3.18 or GTK 3.20+ and require the `gtk2-engines-murrine` or `gtk-engine-murrine` package to be installed.

The current release version of the themes can be downloaded and installed via Cinnamon's Themes module in Cinnamon Settings or manually via [Cinnamon Spices](https://cinnamon-spices.linuxmint.com/themes), [openDesktop.org](https://www.opendesktop.org/member/491875/), or from [this Github repository](https://github.com/smurphos/cinnamox_themes/releases).

#### Making your own variant of the Cinnamon theme

All Cinnamox themes are built from the base `cinnamon.css` template included in this repository via replacement of `#place-holders` with hexadecimal color codes.

`cinnamox_cinnamon_picker.sh` is the interactive script that conducts the build. It also creates the `info.json`, `README.md` and the `cinnamox_transparency.sh` script. It includes a function for each Cinnamox variety which define the color codes used in the replacement. So to create another colour variation the easiest way is to create a new function with the color codes required and reference it in the choices dialogue. A little bit of bash knowledge is required. If you want to change other elements of the theme other than the color work on the `cinnamon.css` template directly.

As an example here is the function for Cinnamox-Aubergine

```
function aubergine {
	LIGHTBG="#77216F"; TEXT="#f2d9f0"; SELTEXT="#000000"; DARKBG="#2c001e"; HIGHLIGHT="#e95420";
	LOWTRANSLIGHTBG="rgba(119, 33, 111, 0.8)"; MODTRANSLIGHTBG="rgba(119, 33, 111, 0.65)"; HIGHTRANSLIGHTBG="rgba(119, 33, 111, 0.5)";
	LOWTRANSDARKBG="rgba(44, 0, 30, 0.9)"; MODTRANSDARKBG="rgba(44, 0, 30, 0.75)"; HIGHTRANSDARKBG="rgba(44, 0, 30, 0.6)";
	ALWAYSTRANLBG="rgba(119, 33, 111, 0.4)"; ALWAYSTRANDBG="rgba(44, 0, 30, 0.5)";
	WARNINGTXT="#e9dd00"; ERRORTXT="#e92041"; LINKTXT="#f2a9ec";
	THEMENAME="Cinnamox-Aubergine"; COLORDESC="a deep purple colour scheme and light text";
	build_theme;
}
```
And here are what the variables do. If making your own colour variant each value must be unique. Where relevant please note where the same value is used in the [Cinnamox-gtk-theme colors files](https://github.com/smurphos/cinnamox-gtk-theme/tree/master/test/colors) for the matching GTK theme.

```
LIGHTBG - the lighter background shade in the theme gradients. BG in Cinnamox-gtk-theme colors definition
TEXT	- primary foreground text/applet color. FG in Cinnamox-gtk-theme colors definition
SELTEXT - the foreground text/applet color for selected items (e.g. on menu hover). SEL_FG in Cinnamox-gtk-theme colors definition
DARKBG  - the darker background shade in the theme gradients. MENU_BG in Cinnamox-gtk-theme colors definition
HIGHLIGHT - the selection highlight color. SEL_BG in Cinnamox-gtk-theme colors definition
WARNINGTXT - used in cinnamon for the power applet as a low battery indicator. TERMINAL_COLOR11 in Cinnamox-gtk-theme colors definition 
ERRORTXT - used in cinnamon for the power applet as a critical battery indicator. TERMINAL_COLOR9 in Cinnamox-gtk-theme colors definition
LINKTXT - hyperlink text color. TERMINAL_COLOR4 in Cinnamox-gtk-theme colors definition

ALWAYSTRANLBG - this is used for the expo/scale view - it should be a transparent version of LIGHTBG
ALWAYSTRANDBG - this is used for the expo/scale view - it should be a transparent version of DARKBG

LOWTRANSLIGHTBG - low transparency version of LIGHTBG used in cinnamox_transparency.sh
MODTRANSLIGHTBG - medium transparency version of LIGHTBG used in cinnamox_transparency.sh
HIGHTRANSLIGHTBG - high transparency version of LIGHTBG used in cinnamox_transparency.sh
LOWTRANSDARKBG - low transparency version of DARKBG used in cinnamox_transparency.sh
MODTRANSDARKBG - medium transparency version of DARKBG used in cinnamox_transparency.sh
HIGHTRANSDARKBG - high transparency version of DARKBG used in cinnamox_transparency.sh

THEMENAME - the name of the theme!
COLORDESC - partial description string used to create the info.json and README.md
```

#### Enough words - time for some eye candy

##### Cinnamox-Aubergine

![Cinnamox-Aubergine](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Aubergine-menu.png "Cinnamox-Aubergine")
![Cinnamox-Aubergine](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Aubergine-calendar.png "Cinnamox-Aubergine")
![Cinnamox-Aubergine](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Aubergine-GTK.png  "Cinnamox-Aubergine")
![Cinnamox-Aubergine](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Aubergine-trans.png  "Cinnamox-Aubergine")

##### Cinnamox-Gold-Spice

![Cinnamox-Gold-Spice](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Gold-Spice-menu.png "Cinnamox-Gold-Spice")
![Cinnamox-Gold-Spice](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Gold-Spice-calendar.png "Cinnamox-Gold-Spice")
![Cinnamox-Gold-Spice](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Gold-Spice-GTK.png  "Cinnamox-Gold-Spice")
![Cinnamox-Gold-Spice](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Gold-Spice-trans.png  "Cinnamox-Gold-Spice")

##### Cinnamox-Heather

![Cinnamox-Heather](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Heather-menu.png "Cinnamox-Heather")
![Cinnamox-Heather](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Heather-calendar.png "Cinnamox-Heather")
![Cinnamox-Heather](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Heather-GTK.png  "Cinnamox-Heather")
![Cinnamox-Heather](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Heather-trans.png  "Cinnamox-Heather")

##### Cinnamox-Kashmir-Blue

![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Kashmir-Blue-menu.png "Cinnamox-Kashmir-Blue")
![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Kashmir-Blue-calendar.png "Cinnamox-Kashmir-Blue")
![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Kashmir-Blue-GTK.png  "Cinnamox-Kashmir-Blue")
![Cinnamox-Kashmir-Blue](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Kashmir-Blue-trans.png  "Cinnamox-Kashmir-Blue")

##### Cinnamox-Rhino

![Cinnamox-Rhino](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rhino-menu.png "Cinnamox-Rhino")
![Cinnamox-Rhino](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rhino-calendar.png "Cinnamox-Rhino")
![Cinnamox-Rhino](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rhino-GTK.png  "Cinnamox-Rhino")
![Cinnamox-Rhino](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rhino-trans.png  "Cinnamox-Rhino")

##### Cinnamox-Rosso-Cursa

![Cinnamox-Rosso-Cursa](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rosso-Cursa-menu.png "Cinnamox-Rosso-Cursa")
![Cinnamox-Rosso-Cursa](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rosso-Cursa-calendar.png "Cinnamox-Rosso-Cursa")
![Cinnamox-Rosso-Cursa](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rosso-Cursa-GTK.png  "Cinnamox-Rosso-Cursa")
![Cinnamox-Rosso-Cursa](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Rosso-Cursa-trans.png  "Cinnamox-Rosso-Cursa")

##### Cinnamox-Willow-Grove

![Cinnamox-Willow-Grove](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Willow-Grove-menu.png "Cinnamox-Willow-Grove")
![Cinnamox-Willow-Grove](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Willow-Grove-calendar.png "Cinnamox-Willow-Grove")
![Cinnamox-Willow-Grove](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Willow-Grove-GTK.png  "Cinnamox-Willow-Grove")
![Cinnamox-Willow-Grove](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Willow-Grove-trans.png  "Cinnamox-Willow-Grove")

##### Cinnamox-Zanah

![Cinnamox-Zanah](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Zanah-menu.png "Cinnamox-Zanah")
![Cinnamox-Zanah](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Zanah-calendar.png "Cinnamox-Zanah")
![Cinnamox-Zanah](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Zanah-GTK.png  "Cinnamox-Zanah")
![Cinnamox-Zanah](https://github.com/smurphos/cinnamox_themes/raw/master/Screenshots/Zanah-trans.png  "Cinnamox-Zanah")
