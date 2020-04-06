# Run from main.mcfunction

#define tag power.crossbow.pickup Player who has picked up crossbow item

# Give crossbow to who ever pick up the power up
## If player have a crossbow in his inventory unless it has Power:1b tag; give the player power.crossbow.pickup tag
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow"}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:crossbow",tag:{Power:1b}}]}] run tag @s add power.crossbow.pickup

## When a player has picked up a crossbow item
execute as @a[tag=power.crossbow.pickup] run function power:pickup/crossbow/pickedup

## Kill the crossbow item to prevent sharing
kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",tag:{Power:1b}}}]

# Timer
## If player's power.crossbow is more than one and less than 160; add one to power.crossbow
scoreboard players add @a[scores={power.crossbow=1..160}] power.crossbow 1
## If player's power.crossbow is more than 160; remove the crossbow
clear @a[scores={power.crossbow=160..}] minecraft:crossbow
## If player's power.crossbow is more than 160; remove the arrows
clear @a[scores={power.crossbow=160..}] minecraft:arrow 9
## If player's power.crossbow is more than 160; reset power.crossbow
scoreboard players reset @a[scores={power.crossbow=160..}] power.crossbow