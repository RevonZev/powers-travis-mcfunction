execute as @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run effect give @s minecraft:regeneration 1 2 true
execute at @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
execute at @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run particle minecraft:happy_villager ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
execute as @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run clear @s minecraft:apple