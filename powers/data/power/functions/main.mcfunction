# Creeper
function power:creeper/armor
function power:creeper/sneak
function power:creeper/animation

# Skeleton
function power:skeleton/armor
function power:skeleton/hold_bow
function power:skeleton/give_arrow

# Reset scores
scoreboard players reset @a power.shootBow
scoreboard players reset @a power.sneak

# Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]