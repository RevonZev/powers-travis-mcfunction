# Run from main.mcfunction
# Execute as player that have power.pigman tag and replace their armor

replaceitem entity @a[tag=power.pigman] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Zombie Pigman\"}"},SkullOwner:"MHF_PigZombie"} 1
replaceitem entity @a[tag=power.pigman] armor.chest minecraft:leather_chestplate{display:{color:15439513}}
replaceitem entity @a[tag=power.pigman] armor.legs minecraft:leather_leggings{display:{color:15439513}}
replaceitem entity @a[tag=power.pigman] armor.feet minecraft:leather_boots{display:{color:15439513}}