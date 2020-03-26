# Run from main.mcfunction

# Jump to cooldown1 / value
scoreboard players add @a[tag=power.blaze,scores={power.jump=1..}] power.cooldown1 1

# Double jump
execute at @a[tag=power.blaze,scores={power.cooldown1=1},gamemode=!creative] if block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:barrier
execute at @a[tag=power.blaze,scores={power.cooldown1=2..}] if block ~ ~-1 ~ minecraft:barrier run setblock ~ ~-1 ~ minecraft:air

# Double jump removal
execute at @a[tag=power.blaze,scores={power.cooldown1=1}] if block ~ ~-1 ~ minecraft:barrier align xz positioned ~.5 ~-1 ~.5 unless entity @e[tag=power.blaze.jumpBlock,distance=..0.5] run summon minecraft:armor_stand ~ ~ ~ {Tags:[power.blaze.jumpBlock],NoGravity:1b,Invisible:1b}
execute as @e[tag=power.blaze.jumpBlock] at @s unless block ~ ~ ~ minecraft:barrier run kill @s
execute as @e[tag=power.blaze.jumpBlock] at @s unless entity @a[tag=power.blaze,scores={power.cooldown1=1},distance=..1.2] run setblock ~ ~ ~ minecraft:air
execute as @e[tag=power.blaze.jumpBlock] at @s run particle minecraft:large_smoke ~ ~0.5 ~ 0.5 0.3 0.5 0.01 1 normal

# Removal timer with cooldown2
scoreboard players add @a[tag=power.blaze,scores={power.cooldown1=1..}] power.cooldown2 1
scoreboard players set @a[tag=power.blaze,scores={power.cooldown2=9}] power.cooldown1 2
scoreboard players set @a[tag=power.blaze,scores={power.cooldown2=15}] power.cooldown1 0
scoreboard players set @a[tag=power.blaze,scores={power.cooldown2=15}] power.cooldown2 0
