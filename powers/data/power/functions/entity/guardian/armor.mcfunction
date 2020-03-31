# Run from entity/guardian/main.mcfunction
# As power.guardian tagged player

# Execute as player that have power.guardian tag and replace their armor
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Guardian\"}"},SkullOwner:"Guardian"}
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:5799022}}
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:5799022}}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:5799022}}