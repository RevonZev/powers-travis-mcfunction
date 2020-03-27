# Run from main.mcfunction

# Sneak detection and break reset
## If creeper player is sneaking; add one to cooldown1's value
scoreboard players add @a[tag=power.creeper,scores={power.sneak=1..}] power.cooldown1 1
## Unless creeper player is sneaking; set cooldown1's value to zero
execute as @a[tag=power.creeper] unless score @s power.sneak matches 1.. run scoreboard players set @s power.cooldown1 0

# Explosion
## Play sounds
execute at @a[tag=power.creeper,scores={power.cooldown1=1}] run playsound minecraft:entity.creeper.primed hostile @a[distance=..3] ~ ~ ~ 1 .8 1
execute at @a[tag=power.creeper,scores={power.cooldown1=60..}] run playsound minecraft:entity.generic.explode hostile @a[distance=..3] ~ ~ ~ 1 .8 1
execute at @a[tag=power.creeper,scores={power.cooldown1=60..}] run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 1 normal
## Deal damage according to their proximity
execute at @a[tag=power.creeper,scores={power.cooldown1=60..}] run effect give @e[distance=0.1..2] minecraft:wither 2 1 true
execute at @a[tag=power.creeper,scores={power.cooldown1=60..}] run effect give @e[distance=2.1..2.5] minecraft:wither 1 2 true
execute at @a[tag=power.creeper,scores={power.cooldown1=60..}] run effect give @e[distance=2.6..3] minecraft:wither 1 1 true

# If creeper player's cooldown1 more than sixty; set cooldown1's value to zero
scoreboard players set @a[tag=power.creeper,scores={power.cooldown1=60..}] power.cooldown1 0