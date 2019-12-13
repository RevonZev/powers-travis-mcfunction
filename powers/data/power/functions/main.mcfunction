# Creeper
function power:creeper/armor
function power:creeper/jump
function power:creeper/sneak_jump

# Skeleton
function power:skeleton/armor
function power:skeleton/hold_bow
function power:skeleton/give_arrow

# Reset scores
scoreboard players reset @a power.jump
scoreboard players reset @a power.sneak
scoreboard players reset @a power.shootBow

# Clear landded arrow
kill @e[type=arrow,nbt={inGround:1b}]