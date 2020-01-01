#region give crossbow power item
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Power:1b}}]}] run tag @s add power.crossbow.pickup
clear @a[tag=power.crossbow.pickup] minecraft:crossbow
give @a[tag=power.crossbow.pickup] minecraft:crossbow{Power:1b} 1
give @a[tag=power.crossbow.pickup] minecraft:arrow 9
scoreboard players set @a[tag=power.crossbow.pickup] power.crossbow 1
tag @a[tag=power.crossbow.pickup] remove power.crossbow.pickup
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",tag:{Power:1b}}}]
#endregion

#region timer
scoreboard players add @a[scores={power.crossbow=1..160}] power.crossbow 1
clear @a[scores={power.crossbow=160..}] minecraft:crossbow
clear @a[scores={power.crossbow=160..}] minecraft:arrow 9
scoreboard players reset @a[scores={power.crossbow=160..}] power.crossbow
#endtimer