execute at @a[scores={power.jump=1..,power.sneak=1..},tag=power.creeper] run playsound minecraft:entity.generic.explode hostile @a[distance=..4] ~ ~ ~ 1 .5 1
execute at @a[scores={power.jump=1..,power.sneak=1..},tag=power.creeper] run particle minecraft:explosion_emitter ~ ~ ~ 1 1 1 0 1 normal
execute at @a[scores={power.jump=1..,power.sneak=1..},tag=power.creeper] run effect give @a[distance=..3,tag=!power.creeper] minecraft:poison 1 3 true
execute at @a[scores={power.jump=1..,power.sneak=1..},tag=power.creeper] run effect give @a[distance=..3,tag=power.creeper] minecraft:poison 1 2 true