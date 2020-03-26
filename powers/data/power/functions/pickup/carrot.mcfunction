# Run from main.mcfunction

execute as @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run effect give @s minecraft:jump_boost 7 1 true
execute at @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
execute at @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run particle minecraft:dust 0 1 0 1 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
execute as @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run clear @s minecraft:carrot