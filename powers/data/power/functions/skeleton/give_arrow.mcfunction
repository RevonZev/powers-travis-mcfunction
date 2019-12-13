scoreboard players add @a[tag=power.skeleton] power.cooldown1 1
scoreboard players reset @a[tag=power.skeleton,scores={power.shootBow=1..}] power.cooldown1
execute as @a[tag=power.skeleton,scores={power.cooldown1=100..}] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run give @s minecraft:arrow 1
scoreboard players reset @a[tag=power.skeleton,scores={power.cooldown1=100..}] power.cooldown1