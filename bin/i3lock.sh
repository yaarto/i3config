#!/bin/sh
IMG=Pictures/Wallpaper/Wallpaper.png  
convert $IMG -blur 2x2  -charcoal 1 -colorize 70%  $IMG
convert $IMG -blur 1x1  -implode 1 -colorize 20%   $IMG
convert $IMG -scale 50% -scale 200% $IMG
convert $IMG ~/.config/i3/bin/lock.png -gravity center -composite -matte $IMG
if ! i3lock -i $IMG; then
    return 1
fi
xset dpms force off
