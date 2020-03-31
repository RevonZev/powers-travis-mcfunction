# Run from entity/skeleton/main.mcfunction
# As power.skeleton tagged player

# If skeleton player don't own a bow; give a bow
execute unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b}]}] run give @s minecraft:bow{PowerItem:1b}