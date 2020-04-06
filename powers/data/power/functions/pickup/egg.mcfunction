# Run from main.mcfunction
# At egg projectile

#define tag power.effected

# If thrown egg is near a player; add power.effected tag to him
tag @e[distance=..1,sort=nearest,type=!minecraft:egg] add power.effected