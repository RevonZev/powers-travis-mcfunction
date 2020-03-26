# Run from main.mcfunction

execute as @a[tag=power.villager,nbt={Inventory:[{id:"minecraft:emerald"}]}] run effect give @s minecraft:strength 8 0 true
execute at @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run playsound minecraft:block.note_block.bell player @a[distance=..3] ~ ~ ~ .5 1 1
execute at @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run particle minecraft:dust 0 1 0 0 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
execute as @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald