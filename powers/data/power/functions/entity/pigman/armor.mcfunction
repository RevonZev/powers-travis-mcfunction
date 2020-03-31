# Run from entity/pigman/main.mcfunction
# As power.pigman tagged player

# Execute as player that have power.pigman tag and replace their armor
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Zombie Pigman\"}"},SkullOwner:"MHF_PigZombie"} 1
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:15439513}}
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:15439513}}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:15439513}}