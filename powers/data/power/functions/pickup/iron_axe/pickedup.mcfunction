# Run from pickup/iron_axe/main.mcfunction
# As power.ironAxe.pickup tagged player

# player tagged with power.ironAxe.pickup; clear iron_axe
clear @s minecraft:iron_axe
# player tagged with power.ironAxe.pickup; give iron_axe with Power:1b tag
give @s minecraft:iron_axe{Power:1b} 1
# player tagged with power.ironAxe.pickup; set power.i_axe value's to one
scoreboard players set @s power.i_axe 1
# player tagged with power.ironAxe.pickup; remove it
tag @s remove power.ironAxe.pickup
