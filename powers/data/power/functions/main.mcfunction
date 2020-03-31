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
# TODO: OPTIMIZATIONS
## Apple
function power:pickup/apple

## Golden Apple
function power:pickup/golden_apple

## Carrot
function power:pickup/carrot

## Emerlad
function power:pickup/emerald

## Egg
function power:pickup/egg
function power:pickup/rand/effect

## Snowball
function power:pickup/snowball

## Golden Sword
function power:pickup/golden_sword

## Golden Sword
# TODO: FIX THIS
#function power:pickup/iron_axe

## Golden Sword
function power:pickup/crossbow

# Other

## Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak
scoreboard players reset @a power.jump

## Reset tag
tag @e[tag=power.start] remove power.start

## Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]