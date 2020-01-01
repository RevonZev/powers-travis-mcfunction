scoreboard players add @a power.cooldown1 0
scoreboard players add @a power.cooldown2 0
scoreboard players add @a power.snowball 0


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

# Villager
function power:entity/villager/armor
function power:entity/villager/blood_trail

# Zombie
function power:entity/zombie/armor
function power:entity/zombie/sneak_heal

# Cave Spider
function power:entity/cave_spider/armor
function power:entity/cave_spider/sneak_poison

# Guardian
function power:entity/guardian/armor
function power:entity/guardian/strength_buff


#> Pick Ups

# Apple
function power:pickup/apple

# Golden Apple
function power:pickup/golden_apple

# Carrot
function power:pickup/carrot

# Emerlad
function power:pickup/emerald

# Egg
function power:pickup/egg
function power:pickup/rand/effect

# Snowball
function power:pickup/snowball

# Golden Sword
function power:pickup/golden_sword

#> Other

# Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak
scoreboard players reset @a power.jump
scoreboard players set @a power.snowball 0

# Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]