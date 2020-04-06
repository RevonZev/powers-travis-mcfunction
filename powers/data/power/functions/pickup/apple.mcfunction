# Run from main.mcfunction
# As player that have an apple in his inventory

# If beside villager player get an apple; give regen effect
execute unless entity @s[tag=power.villager] run effect give @s minecraft:regeneration 3 1 true
# If villager player get an apple; give regen effect
execute if entity @s[tag=power.villager] run effect give @s minecraft:regeneration 5 1 true
# If player have an apple in his inventory; play eating sound
execute at @s run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
# If player have an apple in his inventory; play happy_villager particle
execute at @s run particle minecraft:happy_villager ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
#If player have an apple in his inventory; clear that apple
clear @s minecraft:apple