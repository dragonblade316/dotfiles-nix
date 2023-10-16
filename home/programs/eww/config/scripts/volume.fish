#!/usr/local/bin/fish
set increment 5


if $argv == up
    pamixer --increase increment
else
    pamixer --decrease increment
end
