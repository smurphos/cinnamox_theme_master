#!/bin/bash
VARIANT=("Aubergine" "Gold-Spice" "Heather" "Kashmir-Blue" "Rhino" "Rosso-Cursa" "Willow-Grove" "Zanah")
echo "Select a variant."
select CHOICE in "${VARIANT[@]}";
do
    case $CHOICE in 
    "Aubergine")
		LIGHTBG="#77216F"; TEXT="#f2d9f0"; SELTEXT="#000000"; DARKBG="#2c001e"; HIGHLIGHT="#e95420";
		LOWTRANSLIGHTBG="rgba(119, 33, 111, 0.8)"; MODTRANSLIGHTBG="rgba(119, 33, 111, 0.65)"; HIGHTRANSLIGHTBG="rgba(119, 33, 111, 0.5)";
		LOWTRANSDARKBG="rgba(44, 0, 30, 0.9)"; MODTRANSDARKBG="rgba(44, 0, 30, 0.75)"; HIGHTRANSDARKBG="rgba(44, 0, 30, 0.6)";
		COLORDESC="a deep purple colour scheme and light text";;
    "Gold-Spice")
		LIGHTBG="#99461e"; TEXT="#f2e2da"; SELTEXT="#000000"; DARKBG="#382218"; HIGHLIGHT="#e54c00";
		LOWTRANSLIGHTBG="rgba(153, 70, 30, 0.8)"; MODTRANSLIGHTBG="rgba(153, 70, 30, 0.65)"; HIGHTRANSLIGHTBG="rgba(153, 70, 30, 0.5)";
		LOWTRANSDARKBG="rgba(56, 34, 24, 0.9)"; MODTRANSDARKBG="rgba(56, 34, 24, 0.75)"; HIGHTRANSDARKBG="rgba(56, 34, 24, 0.6)";
		COLORDESC="a golden orange colour scheme and light text";;
    "Heather")
		LIGHTBG="#b7c4cc"; TEXT="#0c1419"; SELTEXT="#ffffff"; DARKBG="#72a0bf"; HIGHLIGHT="#386b8c";
		LOWTRANSLIGHTBG="rgba(183, 196, 204, 0.8)"; MODTRANSLIGHTBG="rgba(183, 196, 204, 0.65)"; HIGHTRANSLIGHTBG="rgba(183, 196, 204, 0.5)";
		LOWTRANSDARKBG="rgba(114, 160, 191, 0.9)"; MODTRANSDARKBG="rgba(114, 160, 191, 0.75)"; HIGHTRANSDARKBG="rgba(114, 160, 191, 0.6)";
		COLORDESC="a pale blue colour scheme and dark text";;
    "Kashmir-Blue")
		LIGHTBG="#577584"; TEXT="#daeaf2"; SELTEXT="#000000"; DARKBG="#28343a"; HIGHLIGHT="#23b29a";
		LOWTRANSLIGHTBG="rgba(87, 117, 132, 0.8)"; MODTRANSLIGHTBG="rgba(87, 117, 132, 0.65)"; HIGHTRANSLIGHTBG="rgba(87, 117, 132, 0.5)";
		LOWTRANSDARKBG="rgba(40, 52, 58, 0.9)"; MODTRANSDARKBG="rgba(40, 52, 58, 0.75)"; HIGHTRANSDARKBG="rgba(40, 52, 58, 0.6)";
		COLORDESC="a soothing blue colour scheme and light text";;
    "Rhino")
		LIGHTBG="#434e5a"; TEXT="#d8e5f2"; SELTEXT="#000000"; DARKBG="#1c2126"; HIGHLIGHT="#3d80cc";
		LOWTRANSLIGHTBG="rgba(67, 78, 90, 0.8)"; MODTRANSLIGHTBG="rgba(67, 78, 90, 0.65)"; HIGHTRANSLIGHTBG="rgba(67, 78, 90, 0.5)";
		LOWTRANSDARKBG="rgba(28, 33, 38, 0.9)"; MODTRANSDARKBG="rgba(28, 33, 38, 0.75)"; HIGHTRANSDARKBG="rgba(28, 33, 38, 0.6)";
		COLORDESC="a deep grey colour scheme and light text";;
    "Rosso-Cursa")
		LIGHTBG="#cc0000"; TEXT="#f2dada"; SELTEXT="#000000"; DARKBG="#4c0000"; HIGHLIGHT="#e54c00";
		LOWTRANSLIGHTBG="rgba(204, 0, 0, 0.8)"; MODTRANSLIGHTBG="rgba(204, 0, 0, 0.65)"; HIGHTRANSLIGHTBG="rgba(204, 0, 0, 0.5)";
		LOWTRANSDARKBG="rgba(76, 0, 0, 0.9)"; MODTRANSDARKBG="rgba(76, 0, 0, 0.75)"; HIGHTRANSDARKBG="rgba(76, 0, 0, 0.6)";
		COLORDESC="an exciting red colour scheme and light text";;
    "Willow-Grove")
		LIGHTBG="#6f7f5f"; TEXT="#e6f2da"; SELTEXT="#000000"; DARKBG="#444c3d"; HIGHLIGHT="#6ccc3d";
		LOWTRANSLIGHTBG="rgba(111, 127, 95, 0.8)"; MODTRANSLIGHTBG="rgba(111, 127, 95, 0.65)"; HIGHTRANSLIGHTBG="rgba(111, 127, 95, 0.5)";
		LOWTRANSDARKBG="rgba(68, 76, 61, 0.9)"; MODTRANSDARKBG="rgba(68, 76, 61, 0.75)"; HIGHTRANSDARKBG="rgba(68, 76, 61, 0.6)";
		COLORDESC="soothing green colour scheme with green highlights and light text";;
    "Zanah")
		LIGHTBG="#b7ccb9"; TEXT="#0c190d"; SELTEXT="#ffffff"; DARKBG="#72bf78"; HIGHLIGHT="#388c40";
		LOWTRANSLIGHTBG="rgba(183, 204, 185, 0.8)"; MODTRANSLIGHTBG="rgba(183, 204, 185, 0.65)"; HIGHTRANSLIGHTBG="rgba(183, 204, 185, 0.5)";
		LOWTRANSDARKBG="rgba(114, 191, 120, 0.9)"; MODTRANSDARKBG="rgba(114, 191, 120, 0.75)"; HIGHTRANSDARKBG="rgba(114, 191, 120, 0.6)";
		COLORDESC="a pale blue colour scheme and dark text";;  
    *) echo "Invalid option. Try another one."; continue;;
    esac
    break
done
THEMENAME="Cinnamox-$CHOICE";
DESCRIPTION="$THEMENAME features $COLORDESC. Cinnamon, Metacity, GTK2, GTK3.18 and GTK3.22 themes are included along with a script to adjust the transparency of the Cinnamon Theme.";
TARGETDIR="$HOME/Workspace/Theming/cinnamon_builds/$THEMENAME";
CURRENTDIR=$PWD;
cd;
cp -r "$CURRENTDIR"/ "$TARGETDIR"/;
cd "$TARGETDIR";
sed -i "s/#LIGHTBG/$LIGHTBG/g" cinnamon.css;
sed -i "s/#TEXT/$TEXT/g" cinnamon.css;
sed -i "s/#SELTEXT/$SELTEXT/g" cinnamon.css;
sed -i "s/#DARKBG/$DARKBG/g" cinnamon.css;
sed -i "s/#HIGHLIGHT/$HIGHLIGHT/g" cinnamon.css;
sed -i "s/#THEMENAME/$THEMENAME/g" cinnamon.css;
sed -i "s/#VARIANT/No transparency/g" cinnamon.css;
sed -i "s/#THEMEDESCRIPTION/$DESCRIPTION/g" cinnamon.css;
sed -i "s/#LIGHTBG/$LIGHTBG/g" cinnamox_transparency.sh;
sed -i "s/#LOWTRANSLIGHTBG/$LOWTRANSLIGHTBG/g" cinnamox_transparency.sh;
sed -i "s/#MODTRANSLIGHTBG/$MODTRANSLIGHTBG/g" cinnamox_transparency.sh;
sed -i "s/#HIGHTRANSLIGHTBG/$HIGHTRANSLIGHTBG/g" cinnamox_transparency.sh;
sed -i "s/#DARKBG/$DARKBG/g" cinnamox_transparency.sh;
sed -i "s/#LOWTRANSDARKBG/$LOWTRANSDARKBG/g" cinnamox_transparency.sh;
sed -i "s/#MODTRANSDARKBG/$MODTRANSDARKBG/g" cinnamox_transparency.sh;
sed -i "s/#HIGHTRANSDARKBG/$HIGHTRANSDARKBG/g" cinnamox_transparency.sh;
sed -i "s/#THEMENAME/$THEMENAME/g" cinnamox_transparency.sh;
sed -i "s/#THEMENAME/$THEMENAME/g" info.json;
sed -i "s/#THEMEDESCRIPTION/$DESCRIPTION/g" info.json;
sed -i "s/#THEMENAME/$THEMENAME/g" README.md;
sed -i "s/#THEMEDESCRIPTION/$DESCRIPTION/g" README.md;
exit
