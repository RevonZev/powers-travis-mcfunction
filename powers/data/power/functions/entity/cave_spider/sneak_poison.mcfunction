# Run from main.mcfunction

# If cave spider player sneaks add one to cooldown1's value
scoreboard players add @a[tag=power.caveSpider,scores={power.sneak=1..}] power.cooldown1 1

# Cave Spider's power
## If cave spider player sneaked for one tick play spider sound
execute at @a[tag=power.caveSpider,scores={power.cooldown1=1}] run playsound minecraft:entity.spider.ambient hostile @a[distance=..5] ~ ~ ~ .5 .8 1
## If cave spider player sneaked for more than one tick; run green particles
execute at @a[tag=power.caveSpider,scores={power.cooldown1=1..}] run particle minecraft:dust 0 0.6 0 1 ~ ~ ~ 5.5 0 5.5 0.1 10 normal
## If cave spider player sneaked for sixty tick; give poison to all player all around
execute at @a[tag=power.caveSpider,scores={power.cooldown1=60}] run effect give @e[distance=0.1..5] minecraft:poison 3 1 true

# Reset
## If cave spider player's cooldown1 has reached sixty; set to zero
scoreboard players set @a[tag=power.caveSpider,scores={power.cooldown1=60..}] power.cooldown1 0
## Unless a cave spider player is sneaking; set cooldown 1 to zero
execute as @a[tag=power.caveSpider] unless score @s power.sneak matches 1.. run scoreboard players set @s power.cooldown1 0