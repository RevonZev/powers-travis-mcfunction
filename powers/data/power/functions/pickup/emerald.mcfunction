# Run from main.mcfunction

# If villager player have an emerlad in his inventory; give strength effect
execute as @a[tag=power.villager,nbt={Inventory:[{id:"minecraft:emerald"}]}] run effect give @s minecraft:strength 8 0 true
# If player have an emerlad in his inventory; play note_block.bell sound
execute at @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run playsound minecraft:block.note_block.bell player @a[distance=..3] ~ ~ ~ .5 1 1
# If player have an emerlad in his inventory; play green dust particle
execute at @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run particle minecraft:dust 0 1 0 0 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
# If player have an emerlad in his inventory; clear it
execute as @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run clear @s minecraft:emerald