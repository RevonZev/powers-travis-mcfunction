# Run from main.mcfunction

# If skeleton player don't own a bow; give a bow
execute as @a[tag=power.skeleton] unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b}]}] run give @s minecraft:bow{PowerItem:1b}