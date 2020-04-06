# Run from pickup/golden_sword/wither_head/main.mcfunction
# As at armor stand tagged with wither_head

# Wither effect
execute as @a[distance=..1] run effect give @s minecraft:wither 5 1
# Kill self
kill @s