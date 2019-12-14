scoreboard players add @a power.cooldown1 0
scoreboard players add @a power.cooldown2 0

# Creeper
function power:creeper/armor
function power:creeper/sneak
function power:creeper/animation

# Skeleton
function power:skeleton/armor
function power:skeleton/hold_bow
function power:skeleton/give_arrow

# Blaze
function power:blaze/armor
function power:blaze/double_jump
function power:blaze/fire_immune

# Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak
scoreboard players reset @a power.jump

# Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]