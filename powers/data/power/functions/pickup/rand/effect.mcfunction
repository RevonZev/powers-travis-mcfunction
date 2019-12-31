#define tag power.rand.effect
#define tag power.rand.effect.strength
#define tag power.rand.effect.speed
#define tag power.rand.effect.weak
#define tag power.rand.effect.slow
#define tag power.rand.selected

#region randomizer
execute at @e[tag=power.effected] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["power.rand.effect","power.rand.effect.strength"]}
execute at @e[tag=power.effected] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["power.rand.effect","power.rand.effect.speed"]}
execute at @e[tag=power.effected] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["power.rand.effect","power.rand.effect.slow"]}
execute at @e[tag=power.effected] run summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["power.rand.effect","power.rand.effect.weak"]}
#endregion

#region give effects
execute at @e[tag=power.effected] run tag @e[tag=power.rand.effect,distance=..1,sort=random,limit=1] add power.rand.selected
execute at @e[tag=power.rand.effect,tag=power.rand.selected,tag=power.rand.effect.strength] run effect give @e[distance=..1,sort=nearest] strength 5
execute at @e[tag=power.rand.effect,tag=power.rand.selected,tag=power.rand.effect.speed] run effect give @e[distance=..1,sort=nearest] speed 5
execute at @e[tag=power.rand.effect,tag=power.rand.selected,tag=power.rand.effect.weak] run effect give @e[distance=..1,sort=nearest] weakness 5
execute at @e[tag=power.rand.effect,tag=power.rand.selected,tag=power.rand.effect.slow] run effect give @e[distance=..1,sort=nearest] slowness 5
#endregion

#region reset
kill @e[type=area_effect_cloud,tag=power.rand.effect]
tag @e[tag=power.effected] remove power.effected
#endregion