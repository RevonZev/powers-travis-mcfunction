# Run from main.mcfunction
# As a player that have a golden apple in his inventory

# If beside villager player have a golden apple in his inventory; give regen effect
execute unless entity @s[tag=power.villager] run effect give @s minecraft:regeneration 2 2 true
# If villager player have a golden apple in his inventory; give regen effect
execute if entity @s[tag=power.villager] run effect give @s minecraft:regeneration 3 2 true
# If player have a golden apple in his inventory; play eating sound
execute at @s run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
# If player have a golden apple in his inventory; play pink dust particle
execute at @s run particle minecraft:dust 1 0 1 1 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
# If player have a golden apple in his inventory; clear it
clear @s minecraft:golden_apple