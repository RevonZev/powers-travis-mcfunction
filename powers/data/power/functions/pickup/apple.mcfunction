# Run from main.mcfunction

# If beside villager player get an apple; give regen effect
execute as @a[tag=!power.villager,nbt={Inventory:[{id:"minecraft:apple"}]}] run effect give @s minecraft:regeneration 3 1 true
# If villager player get an apple; give regen effect
execute as @a[tag=power.villager,nbt={Inventory:[{id:"minecraft:apple"}]}] run effect give @s minecraft:regeneration 5 1 true
# If player have an apple in his inventory; play eating sound
execute at @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
# If player have an apple in his inventory; play happy_villager particle
execute at @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run particle minecraft:happy_villager ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
#If player have an apple in his inventory; clear that apple
execute as @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run clear @s minecraft:apple