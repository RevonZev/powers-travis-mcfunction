# Run from main.mcfunction

execute as @a[tag=power.skeleton] unless entity @s[nbt={Inventory:[{id:"minecraft:bow",Count:1b}]}] run give @s minecraft:bow{PowerItem:1b}