# Run from main.mcfunction

execute as @a[tag=!power.villager,nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run effect give @s minecraft:regeneration 2 2 true
execute as @a[tag=power.villager,nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run effect give @s minecraft:regeneration 3 2 true
execute at @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
execute at @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run particle minecraft:dust 1 0 1 1 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
execute as @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run clear @s minecraft:golden_apple