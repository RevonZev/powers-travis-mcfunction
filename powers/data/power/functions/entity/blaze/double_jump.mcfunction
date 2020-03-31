# Run from entity/blaze/main.mcfunction
# As power.blaze tagged player

# Jump to cooldown1 / value
## After jumping; add one to cooldown1
scoreboard players add @s[scores={power.jump=1..}] power.cooldown1 1

# Double jump
## If blaze player have jumped once, not in creative, and under him is air; place a barrier under him
execute at @s[scores={power.cooldown1=1},gamemode=!creative] if block ~ ~-1 ~ minecraft:air run setblock ~ ~-1 ~ minecraft:barrier
## If blaze player have jumped twice, and under him is barrier; place air under him
execute at @s[scores={power.cooldown1=2..}] if block ~ ~-1 ~ minecraft:barrier run setblock ~ ~-1 ~ minecraft:air

# Double jump removal
## If blaze player have jumped once, and under him is barrier; summon an armorstand in it with blaze.jumpBlock tag
execute at @s[scores={power.cooldown1=1}] if block ~ ~-1 ~ minecraft:barrier align xz positioned ~.5 ~-1 ~.5 unless entity @e[tag=power.blaze.jumpBlock,distance=..0.5] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["power.blaze.jumpBlock"]}
## If entity with blaze.jumpBlock tag, and in it is not barrier; suicide
execute as @e[tag=power.blaze.jumpBlock] at @s unless block ~ ~ ~ minecraft:barrier run kill @s
## If entity with blaze.jumpBlock tag, and unless blaze player have jump once in 1.2 proximity; place air
execute as @e[tag=power.blaze.jumpBlock] at @s unless entity @a[tag=power.blaze,scores={power.cooldown1=1},distance=..1.2] run setblock ~ ~ ~ minecraft:air
## If entity blaze.jumpBlock; particle
execute as @e[tag=power.blaze.jumpBlock] at @s run particle minecraft:large_smoke ~ ~0.5 ~ 0.5 0.3 0.5 0.01 1 normal

# Reset cooldown1 timer with cooldown2
## If blaze player have jumped once; add 1 to cooldown2
scoreboard players add @s[scores={power.cooldown1=1..}] power.cooldown2 1
## If blaze player's cooldown2 is 9; set cooldown1 to 2
scoreboard players set @s[scores={power.cooldown2=9}] power.cooldown1 2
## If blaze player's cooldown2 is 15; set cooldown1 to 0
scoreboard players set @s[scores={power.cooldown2=15}] power.cooldown1 0
## If balze player's cooldown2 is 15 set cooldown2 to 0
scoreboard players set @s[scores={power.cooldown2=15}] power.cooldown2 0
