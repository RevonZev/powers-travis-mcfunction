# Run from main.mcfunction

#region give iron_axe power item
execute as @a[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",tag:{Power:1b}}]}] run tag @s add power.ironAxe.pickup
clear @a[tag=power.ironAxe.pickup] minecraft:iron_axe
give @a[tag=power.ironAxe.pickup] minecraft:iron_axe{Power:1b} 1
scoreboard players set @a[tag=power.ironAxe.pickup] power.i_axe 1
tag @a[tag=power.ironAxe.pickup] remove power.ironAxe.pickup
kill @e[type=item,nbt={Item:{id:"minecraft:iron_axe",tag:{Power:1b}}}]
#endregion

# Effect
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect give @s strength 2 0 true

# Blood trail
execute at @a[nbt={ActiveEffects:[{Id:5b}],SelectedItem:{id:"minecraft:iron_axe"}}] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0 0.5 0.1 3 normal

#region timer
scoreboard players add @a[scores={power.i_axe=1..160}] power.i_axe 1
clear @a[scores={power.i_axe=160..}] minecraft:iron_axe
scoreboard players reset @a[scores={power.i_axe=160..}] power.i_axe
#endtimer