#> Execute as player that have power.guardian tag and replace their armor

replaceitem entity @a[tag=power.guardian] armor.head minecraft:player_head{display:{Name:"{\"text\":\"Guardian\"}"},SkullOwner:"Guardian"}
replaceitem entity @a[tag=power.guardian] armor.chest minecraft:leather_chestplate{display:{color:5799022}}
replaceitem entity @a[tag=power.guardian] armor.legs minecraft:leather_leggings{display:{color:5799022}}
replaceitem entity @a[tag=power.guardian] armor.feet minecraft:leather_boots{display:{color:5799022}}