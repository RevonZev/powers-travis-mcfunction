# Run from main.mcfunction
# As armor stands tagged with wither_head

# Kill timer
scoreboard players add @s power.cooldown1 1
kill @s[scores={power.cooldown1=20}]

# Raycast
execute at @s run tp @s ^ ^ ^1

# Particle
execute at @s positioned ~ ~1 ~ run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0.5 0.5 0.5 0.1 3 normal

# Give wither effect to nearby player
execute at @s positioned ~ ~1 ~ if entity @a[distance=..1] run function power:pickup/golden_sword/wither_head/effect