# Run from main.mcfunction

# If beside villager player have a golden apple in his inventory; give regen effect
execute as @a[tag=!power.villager,nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run effect give @s minecraft:regeneration 2 2 true
# If villager player have a golden apple in his inventory; give regen effect
execute as @a[tag=power.villager,nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run effect give @s minecraft:regeneration 3 2 true
# If player have a golden apple in his inventory; play eating sound
execute at @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
# If player have a golden apple in his inventory; play pink dust particle
execute at @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run particle minecraft:dust 1 0 1 1 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
# If player have a golden apple in his inventory; clear it
execute as @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run clear @s minecraft:golden_apple