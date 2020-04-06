# Run from pickup/golden_sword/main.mcfunction
# As power.goldenSword.pickup tagged player

# power.goldenSword.pickup tagged player; clear golden_sword
clear @s minecraft:golden_sword
# power.goldenSword.pickup tagged player; give golden_sword with Power:1b tag
give @s minecraft:golden_sword{Power:1b} 1
# power.goldenSword.pickup tagged player; set power.g_sword's value to one
scoreboard players set @s power.g_sword 1
# power.goldenSword.pickup tagged player; remove it
tag @s remove power.goldenSword.pickup
