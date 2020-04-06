# Run from tick.json

scoreboard players add @a power.cooldown1 0
scoreboard players add @a power.cooldown2 0

#define tag power.start

# Entity

## Creeper
#define tag power.creeper
execute as @e[tag=power.creeper] run function power:entity/creeper/main

## Skeleton
#define tag power.skeleton
execute as @e[tag=power.skeleton] run function power:entity/skeleton/main

## Blaze
#define tag power.blaze
execute as @a[tag=power.blaze] run function power:entity/blaze/main

## Villager
#define tag power.villager
execute as @a[tag=power.villager] run function power:entity/villager/main

## Zombie
#define tag power.zombie
execute as @a[tag=power.zombie] run function power:entity/zombie/main

## Zombie pigman
#define tag power.pigman
execute as @a[tag=power.pigman] run function power:entity/pigman/main

## Cave Spider
#define tag power.caveSpider
execute as @a[tag=power.caveSpider] run function power:entity/cave_spider/main

## Guardian
#define tag power.guardian
execute as @a[tag=power.guardian] run function power:entity/guardian/main


# Pick Ups

## Apple
execute as @a[nbt={Inventory:[{id:"minecraft:apple"}]}] run function power:pickup/apple

## Golden Apple
execute as @a[nbt={Inventory:[{id:"minecraft:golden_apple"}]}] run function power:pickup/golden_apple

## Carrot
execute as @a[nbt={Inventory:[{id:"minecraft:carrot"}]}] run function power:pickup/carrot

## Emerlad
execute as @a[nbt={Inventory:[{id:"minecraft:emerald"}]}] run function power:pickup/emerald

## Egg
execute at @e[type=minecraft:egg] run function power:pickup/egg
function power:pickup/rand/effect

## Snowball
execute at @e[type=minecraft:snowball] run function power:pickup/snowball

## Golden Sword
function power:pickup/golden_sword/main
execute as @e[tag=power.witherHead,tag=!power.justExist] run function power:pickup/golden_sword/wither_head/main

## Iron Axe
function power:pickup/iron_axe/main

## Golden Sword
function power:pickup/crossbow/main


# Other

## Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak
scoreboard players reset @a power.jump

## Reset tag
tag @e[tag=power.start] remove power.start

## Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]

# Kills all the chicken
tp @e[type=chicken] ~ ~1000 ~
kill @e[type=chicken]