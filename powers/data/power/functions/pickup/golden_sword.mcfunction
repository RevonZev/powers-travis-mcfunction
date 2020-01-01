#define tag power.goldenSword.pickup
#define tag power.punchDetect

#region give golden_sword power item
execute as @a[nbt={Inventory:[{id:"minecraft:golden_sword"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Power:1b}}]}] run tag @s add power.goldenSword.pickup
clear @a[tag=power.goldenSword.pickup] minecraft:golden_sword 1
give @a[tag=power.goldenSword.pickup] minecraft:golden_sword{Power:1b} 1
tag @a[tag=power.goldenSword.pickup] remove power.goldenSword.pickup
#endregion

#region punch detect
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s anchored eyes positioned ~ ~1 ~ unless entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run summon minecraft:slime ~ ~ ~ {Size:2,Tags:[power.punchDetect],NoAI:1b,ActiveEffects:[{ShowParticles:0b,Duration:1000000,Id:14}]}
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s anchored eyes positioned ~ ~1 ~ if entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run team join power.punch @s
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s anchored eyes positioned ~ ~1 ~ if entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run team join power.punch @e[tag=power.punchDetect]
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s anchored eyes positioned ~ ~1 ~ if entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run tp @e[tag=power.punchDetect,distance=..2] ~ ~ ~
execute as @e[type=minecraft:slime,tag=power.punchDetect] at @s unless entity @a[distance=..2] run tp @s ~ ~-1000000 ~
tp @e[type=minecraft:slime,tag=!power.punchDetect] ~ ~-1000000 ~

execute as @e[type=minecraft:slime] if entity @s[nbt={HurtTime:1s}] run clear @p minecraft:golden_sword 1
execute as @e[type=minecraft:slime] if entity @s[nbt={HurtTime:1s}] at @s run summon minecraft:fireball ~ ~ ~ {direction:[0.0,0.0,0.0]}
execute as @e[type=minecraft:slime] at @s if entity @s[nbt={HurtTime:1s}] run tp @s ~ ~-1000000 ~
#endregion