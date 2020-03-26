#define objective power.cooldown1
#define objective power.cooldown2
#define objective power.snowball
scoreboard players add @a power.cooldown1 0
scoreboard players add @a power.cooldown2 0
scoreboard players add @a power.snowball 0

#define tag power.start

# Entity

## Creeper
#define tag power.creeper
function power:entity/creeper/armor
function power:entity/creeper/sneak
function power:entity/creeper/animation

## Skeleton
#define tag power.skeleton
function power:entity/skeleton/armor
function power:entity/skeleton/hold_bow
function power:entity/skeleton/give_arrow

## Blaze
#define tag power.blaze
function power:entity/blaze/armor
function power:entity/blaze/double_jump
function power:entity/blaze/fire_immune

## Villager
#define tag power.villager
function power:entity/villager/armor
function power:entity/villager/blood_trail

## Zombie
#define tag power.zombie
function power:entity/zombie/armor
function power:entity/zombie/sneak_heal

## Zombie pigman
#define tag power.pigman
function power:entity/pigman/armor
function power:entity/pigman/start

## Cave Spider
#define tag power.caveSpider
function power:entity/cave_spider/armor
function power:entity/cave_spider/sneak_poison

## Guardian
#define tag power.guardian
function power:entity/guardian/armor
function power:entity/guardian/strength_buff


# Pick Ups

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
function power:pickup/iron_axe

## Golden Sword
function power:pickup/crossbow

# Other

## Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak
scoreboard players reset @a power.jump
scoreboard players set @a power.snowball 0

## Reset tag
tag @e[tag=power.start] remove power.start

## Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]