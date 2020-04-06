# Run from main.mcfunction

# Give iron axe
## If player have an iron axe without Power:1b tag in his inventory; add power.ironAxe.pickup tag
execute as @a[nbt={Inventory:[{id:"minecraft:iron_axe"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:iron_axe",tag:{Power:1b}}]}] run tag @s add power.ironAxe.pickup

## Player has picked up the iron axe item
execute as @a[tag=power.ironAxe.pickup] run function power:pickup/iron_axe/pickedup

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