# Run from main.mcfunction

#define tag power.effected

# If thrown egg is near a player; add power.effected tag to him
execute at @e[type=minecraft:egg] run tag @e[distance=..1,type=!egg] add power.effected

# Kills all the chicken
tp @e[type=chicken] ~ ~1000 ~
kill @e[type=chicken]