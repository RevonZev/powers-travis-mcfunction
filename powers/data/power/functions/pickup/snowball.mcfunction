# Run from main.mcfunction

# Anyone near a thrown snowball; give slowness to them
execute at @e[type=minecraft:snowball] run effect give @e[distance=..1,sort=nearest] slowness 5 2