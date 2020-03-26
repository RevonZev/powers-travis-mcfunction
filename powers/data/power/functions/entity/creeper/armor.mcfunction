# Execute as player that have power.creeper tag and replace their armor

execute as @a[tag=power.creeper] unless score @s power.cooldown1 matches 1.. run replaceitem entity @s armor.head minecraft:creeper_head
execute as @a[tag=power.creeper] unless score @s power.cooldown1 matches 1.. run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:2227983}}
execute as @a[tag=power.creeper] unless score @s power.cooldown1 matches 1.. run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:2227983}}
execute as @a[tag=power.creeper] unless score @s power.cooldown1 matches 1.. run replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:2227983}}