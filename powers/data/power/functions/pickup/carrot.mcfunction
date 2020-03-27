# Run from main.mcfunction

# If a player have a carrot in his inventory; give jump_boost effect
execute as @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run effect give @s minecraft:jump_boost 7 1 true
# If a player have a carrot in his inventory; play eating sound
execute at @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run playsound minecraft:entity.generic.eat player @a[distance=..3] ~ ~ ~ .5 1 1
# If a player have a carrot in his inventory; play green dust particle
execute at @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run particle minecraft:dust 0 1 0 1 ~ ~.5 ~ 0.5 0.5 0.5 1 10 normal
# If a player have a carrot in his inventory; clear that carrot
execute as @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run clear @s minecraft:carrot