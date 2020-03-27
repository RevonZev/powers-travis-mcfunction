# Run from main.mcfunction

#define tag power.goldenSword.pickup
#define tag power.punchDetect

# give golden_sword power item
## If player have a golden sword in his inventory without Power:1b tag; add power.goldenSword.pickup tag to him
execute as @a[nbt={Inventory:[{id:"minecraft:golden_sword"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:golden_sword",tag:{Power:1b}}]}] run tag @s add power.goldenSword.pickup
## power.goldenSword.pickup tagged player; clear golden_sword
clear @a[tag=power.goldenSword.pickup] minecraft:golden_sword
## power.goldenSword.pickup tagged player; give golden_sword with Power:1b tag
give @a[tag=power.goldenSword.pickup] minecraft:golden_sword{Power:1b} 1
## power.goldenSword.pickup tagged player; set power.g_sword's value to one
scoreboard players set @a[tag=power.goldenSword.pickup] power.g_sword 1
## power.goldenSword.pickup tagged player; remove it
tag @a[tag=power.goldenSword.pickup] remove power.goldenSword.pickup
## Kill all golden_sword item with Power:1b tag
kill @e[type=item,nbt={Item:{id:"minecraft:golden_sword",tag:{Power:1b}}}]

# Punch detect
## If player's selected item is a golden_sword with Power:1b tag, positioned one block above, unless slime click detect is near him; summon the slime click detect
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s positioned ~ ~1 ~ unless entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run summon minecraft:slime ~ ~ ~ {Size:2,Tags:[power.punchDetect],NoAI:1b,ActiveEffects:[{ShowParticles:0b,Duration:1000000,Id:14b}],Silent:1b}
## Disable player collision with click detect
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s positioned ~ ~1 ~ if entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run team join power.punch @s
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s positioned ~ ~1 ~ if entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run team join power.punch @e[tag=power.punchDetect]
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{Power:1b}}}] at @s positioned ~ ~1 ~ if entity @e[type=minecraft:slime,tag=power.punchDetect,distance=..2] run tp @e[tag=power.punchDetect,distance=..2] ~ ~ ~
## Unless slime click detect is near a player; tp to void
execute as @e[type=minecraft:slime,tag=power.punchDetect] at @s unless entity @a[distance=..2] run tp @s ~ ~-1000000 ~
execute as @e[type=minecraft:slime,tag=power.punchDetect] at @s unless entity @a[distance=..2] run kill @s
## Tp all slime without power.punchDetect tag to void
tp @e[type=minecraft:slime,tag=!power.punchDetect] ~ ~-1000000 ~
kill @e[type=minecraft:slime,tag=!power.punchDetect]

# If the slime click detect hurt; clear the player's golden_sword
execute as @e[type=minecraft:slime] if entity @s[nbt={HurtTime:1s}] run clear @p minecraft:golden_sword 1
# If the slime click detect hurt; reset player's power.g_sword
execute as @e[type=minecraft:slime] if entity @s[nbt={HurtTime:1s}] run scoreboard players reset @p power.g_sword
# If the slime click detect hurt; summon a fireball
execute as @e[type=minecraft:slime] if entity @s[nbt={HurtTime:1s}] at @s run summon minecraft:fireball ~ ~ ~ {direction:[0.0,0.0,0.0]}
# If the slime click detect hurt; tp to void
execute as @e[type=minecraft:slime] at @s if entity @s[nbt={HurtTime:1s}] run tp @s ~ ~-1000000 ~
execute as @e[type=minecraft:slime] at @s if entity @s[nbt={HurtTime:1s}] run kill @s

# Timer
## If player did not user the power up in a specified time; remove the power up
scoreboard players add @a[scores={power.g_sword=1..160}] power.g_sword 1
clear @a[scores={power.g_sword=160..}] minecraft:golden_sword
scoreboard players reset @a[scores={power.g_sword=160..}] power.g_sword