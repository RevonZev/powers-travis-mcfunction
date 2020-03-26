# Run from main.mcfunction

execute at @a[tag=power.guardian,scores={power.health=1..4}] run particle minecraft:dolphin ~ ~.5 ~ 0.5 0.5 0.5 1 1 normal
effect give @a[tag=power.guardian,scores={power.health=4..5}] minecraft:strength 5 0 true
effect give @a[tag=power.guardian,scores={power.health=4..5}] minecraft:resistance 5 0 true
effect give @a[tag=power.guardian,scores={power.health=2..3}] minecraft:strength 5 1 true
effect give @a[tag=power.guardian,scores={power.health=2..3}] minecraft:resistance 5 1 true
effect give @a[tag=power.guardian,scores={power.health=1}] minecraft:strength 5 2 true
effect give @a[tag=power.guardian,scores={power.health=1}] minecraft:resistance 5 2 true