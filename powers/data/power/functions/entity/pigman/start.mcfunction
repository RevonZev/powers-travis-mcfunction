# Run from entity/pigman/main.mcfunction
# As power.pigman tagged player

# Run the commands at the start of a game
effect clear @s[tag=power.start]
execute as @s[tag=power.start] run effect give @s minecraft:health_boost 1000000 0 true
execute as @s[tag=power.start] run effect give @s minecraft:instant_health 1 10 true
#execute as @s[tag=power.start] run give @s minecraft:golden_sword