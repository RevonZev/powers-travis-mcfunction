#define objective power.cooldown1
#define objective power.cooldown2
#define objective power.jump
#define objective power.sneak
#define objective power.shootBow
#define objective power.g_sword
#define objective power.i_axe
#define objective power.crossbow

#define team power.punch

scoreboard objectives add power.cooldown1 dummy "Cooldown 1"
scoreboard objectives add power.cooldown2 dummy "Cooldown 2"
scoreboard objectives add power.jump minecraft.custom:minecraft.jump "Jump"
scoreboard objectives add power.sneak minecraft.custom:minecraft.sneak_time "Sneak"
scoreboard objectives add power.shootBow minecraft.used:minecraft.bow "Shoot Bow"
scoreboard objectives add power.g_sword dummy "G sword pickup"
scoreboard objectives add power.i_axe dummy "I sword pickup"
scoreboard objectives add power.crossbow dummy "Crossbow pickup"

team add power.punch "Punch detect colision exclude"
team modify power.punch collisionRule never
team modify power.punch seeFriendlyInvisibles false