# Run from main.mcfunction

effect clear @a[tag=power.pigman,tag=power.start]
execute as @a[tag=power.pigman,tag=power.start] run effect give @s minecraft:health_boost 1000000 0 true
execute as @a[tag=power.pigman,tag=power.start] run effect give @s minecraft:instant_health 1 10 true
execute as @a[tag=power.pigman,tag=power.start] run give @s minecraft:golden_sword