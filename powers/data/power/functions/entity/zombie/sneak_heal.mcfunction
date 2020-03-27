# Run from main.mcfunction

# If zombie player is sneaking; add one to cooldown1
scoreboard players add @a[tag=power.zombie,scores={power.sneak=1..}] power.cooldown1 1

# Zombie player's healing ability
## If zombie player's cooldown1 at a certain value; run a command
execute at @a[tag=power.zombie,scores={power.cooldown1=1}] run playsound minecraft:entity.zombie.ambient hostile @a[distance=..3] ~ ~ ~ .3 .8 1
execute at @a[tag=power.zombie,scores={power.cooldown1=1..}] run particle minecraft:happy_villager ~ ~.5 ~ 0.5 0.5 0.5 1 1 normal
execute as @a[tag=power.zombie,scores={power.cooldown1=40}] run effect give @s minecraft:regeneration 1 2 true

# If zombie player's cooldown1 is forty; set cooldown1 to zero
scoreboard players set @a[tag=power.zombie,scores={power.cooldown1=40..}] power.cooldown1 0
# If zombie player is not sneaking; set cooldown1 to zero
execute as @a[tag=power.zombie] unless score @s power.sneak matches 1.. run scoreboard players set @s power.cooldown1 0