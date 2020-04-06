# Run from pickup/golden_sword/main.mcfunction
# As player that has thrown the golden sword item pick up

#define tag power.witherHead

execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags:[power.witherHead,power.justExist],NoGravity:1b,Invisible:1b}
execute as @e[tag=power.witherHead,tag=power.justExist] run tp @s @p
execute as @e[tag=power.witherHead,tag=power.justExist] at @s run tp @s ^ ^ ^2
tag @e[tag=power.witherHead,tag=power.justExist] remove power.justExist