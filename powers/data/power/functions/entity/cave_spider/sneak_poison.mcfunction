scoreboard players add @a[tag=power.caveSpider,scores={power.sneak=1..}] power.cooldown1 1

execute at @a[tag=power.caveSpider,scores={power.cooldown1=1}] run playsound minecraft:entity.spider.ambient hostile @a[distance=..5] ~ ~ ~ .5 .8 1
execute at @a[tag=power.caveSpider,scores={power.cooldown1=1..}] run particle minecraft:dust 0 0.6 0 1 ~ ~ ~ 5.5 0 5.5 0.1 10 normal
execute at @a[tag=power.caveSpider,scores={power.cooldown1=60}] run effect give @e[distance=0.1..5] minecraft:poison 3 1 true

scoreboard players set @a[tag=power.caveSpider,scores={power.cooldown1=60..}] power.cooldown1 0
execute as @a[tag=power.caveSpider] unless score @s power.sneak matches 1.. run scoreboard players set @s power.cooldown1 0