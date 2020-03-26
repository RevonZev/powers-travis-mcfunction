# Run from main.mcfunction
#define tag power.effected

execute at @e[type=minecraft:egg] run tag @e[distance=..1,type=!egg] add power.effected
tp @e[type=chicken] ~ ~1000 ~