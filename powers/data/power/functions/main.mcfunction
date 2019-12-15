scoreboard players add @a power.cooldown1 0
scoreboard players add @a power.cooldown2 0

#> Entity

# Creeper
function power:entity/creeper/armor
function power:entity/creeper/sneak
function power:entity/creeper/animation

# Skeleton
function power:entity/skeleton/armor
function power:entity/skeleton/hold_bow
function power:entity/skeleton/give_arrow

# Blaze
function power:entity/blaze/armor
function power:entity/blaze/double_jump
function power:entity/blaze/fire_immune

# Zombie
function power:entity/zombie/armor
function power:entity/zombie/sneak_heal

# Cave Spider
function power:entity/cave_spider/armor
function power:entity/cave_spider/sneak_poison

#> Pick Ups

# Apple
function power:pickup/apple

#> Other

# Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak
scoreboard players reset @a power.jump

# Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]