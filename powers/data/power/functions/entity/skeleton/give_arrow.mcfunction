# Run from entity/skeleton/main.mcfunction
# As power.skeleton tagged player

# Add one to skeleton player's cooldown1
scoreboard players add @s power.cooldown1 1
# If a skeleton player shot a bow; reset cooldown1
scoreboard players reset @s[scores={power.shootBow=1..}] power.cooldown1
# If skeleton player's cooldown1 is more than one hundred and unless he have an arrow in his inventory; give an arrow
execute as @s[scores={power.cooldown1=100..}] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run give @s minecraft:arrow 1
# If skeleton player's cooldown1 is more than one hundred; reset cooldown1
scoreboard players reset @s[scores={power.cooldown1=100..}] power.cooldown1