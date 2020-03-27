# Run from main.mcfunction

# Give iron axe
## If player have an iron axe without Power:1b tag in his inventory; add power.ironAxe.pickup tag
execute as @a[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",tag:{Power:1b}}]}] run tag @s add power.ironAxe.pickup
## player tagged with power.ironAxe.pickup; clear iron_axe
clear @a[tag=power.ironAxe.pickup] minecraft:iron_axe
## player tagged with power.ironAxe.pickup; give iron_axe with Power:1b tag
give @a[tag=power.ironAxe.pickup] minecraft:iron_axe{Power:1b} 1
## player tagged with power.ironAxe.pickup; set power.i_axe value's to one
scoreboard players set @a[tag=power.ironAxe.pickup] power.i_axe 1
## player tagged with power.ironAxe.pickup; remove it
tag @a[tag=power.ironAxe.pickup] remove power.ironAxe.pickup
## Kill all iron_axe item with Power:1b tag
kill @e[type=item,nbt={Item:{id:"minecraft:iron_axe",tag:{Power:1b}}}]

# Effect
# Give player holding an iron_axe strength effect
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run effect give @s strength 2 0 true

# Blood trail
# Give player holding an iron_axe with strength effect a red dust particle
execute at @a[nbt={ActiveEffects:[{Id:5b}],SelectedItem:{id:"minecraft:iron_axe"}}] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0 0.5 0.1 3 normal

# Timer
## If player did not user the power up in a specified time; remove the power up
scoreboard players add @a[scores={power.i_axe=1..160}] power.i_axe 1
clear @a[scores={power.i_axe=160..}] minecraft:iron_axe
scoreboard players reset @a[scores={power.i_axe=160..}] power.i_axe