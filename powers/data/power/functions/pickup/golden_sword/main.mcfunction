# Run from main.mcfunction

#define tag power.goldenSword.pickup

# Give the golden sword item
## If player have a golden sword in his inventory without Power:1b tag; add power.goldenSword.pickup tag to him
execute as @a[nbt={Inventory:[{id:"minecraft:golden_sword"}]}] unless data entity @s Inventory[{id:"minecraft:golden_sword",tag:{Power:1b}}] run tag @s add power.goldenSword.pickup
## Player has picked up a golden sword item pick up
execute as @a[tag=power.goldenSword.pickup] run function power:pickup/golden_sword/pickedup

# If player throws a golden sword; run function to summon "wither head"
execute as @e[type=item,nbt={Item:{id:"minecraft:golden_sword",tag:{Power:1b}}}] if data entity @s Thrower at @s as @a[sort=nearest,limit=1] run function power:pickup/golden_sword/wither_head/summon

# Kill all golden_sword item with Power:1b tag
kill @e[type=item,nbt={Item:{id:"minecraft:golden_sword",tag:{Power:1b}}}]

# Timer
## If player did not user the power up in a specified time; remove the power up
scoreboard players add @a[scores={power.g_sword=1..160}] power.g_sword 1
clear @a[scores={power.g_sword=160..}] minecraft:golden_sword
scoreboard players reset @a[scores={power.g_sword=160..}] power.g_sword