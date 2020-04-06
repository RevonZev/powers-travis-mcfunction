# Run from pickup/crossbow/main.mcfunction
# As power.crossbow.pickup tagged player

# clear crossbow.pickup the picked up crossbow
clear @s minecraft:crossbow
# give crossbow.pickup a crossbow with Power:1b tag
give @s minecraft:crossbow{Power:1b} 1
# give crossbow.pickup nine arrows
give @s minecraft:arrow 9
# If player have crossbow.pickup tag; set power.crossbow to one
scoreboard players set @s power.crossbow 1
# Remove power.crossbow player's power.crossbow tag
tag @s remove power.crossbow.pickup