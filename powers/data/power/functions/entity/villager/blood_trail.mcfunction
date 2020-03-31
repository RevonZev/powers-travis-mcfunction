# Run from entity/villager/main.mcfunction
# As power.villager tagged player

# If villager player has strength effect; blood particle all around
execute at @s[nbt={ActiveEffects:[{Id:5b}]}] run particle minecraft:dust 1 0 0 1 ~ ~ ~ 0.5 0 0.5 0.1 3 normal