# Run from entity/villager/main.mcfunction
# As power.villager tagged player

# Execute as player that have power.guardian tag and replace their armor
replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"Villager\"}"},SkullOwner:{Id:"0a9e8efb-9191-4c81-80f5-e27ca5433156",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODIyZDhlNzUxYzhmMmZkNGM4OTQyYzQ0YmRiMmY1Y2E0ZDhhZThlNTc1ZWQzZWIzNGMxOGE4NmU5M2IifX19"}]}}}
replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{color:11762278}}
replaceitem entity @s armor.legs minecraft:leather_leggings{display:{color:11762278}}
replaceitem entity @s armor.feet minecraft:leather_boots{display:{color:11762278}}