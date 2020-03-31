# Run from entity/creeper/main.mcfunction
# As power.creeper tagged player

# Default
execute unless score @s power.cooldown1 matches 1.. run function power:entity/creeper/armor/green

# Creeper flashing animation
execute if score @s power.cooldown1 matches 1..10 run function power:entity/creeper/armor/white
execute if score @s power.cooldown1 matches 11..20 run function power:entity/creeper/armor/green
execute if score @s power.cooldown1 matches 21..30 run function power:entity/creeper/armor/white
execute if score @s power.cooldown1 matches 31..40 run function power:entity/creeper/armor/green
execute if score @s power.cooldown1 matches 41..50 run function power:entity/creeper/armor/white
execute if score @s power.cooldown1 matches 51..60 run function power:entity/creeper/armor/green