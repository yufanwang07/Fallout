#> fallout_smp:player/apply_boon

effect give @s minecraft:strength 300 0 true
effect give @s minecraft:fire_resistance 300 0 true
effect give @s minecraft:resistance 2 4 true
effect give @s minecraft:health_boost 300 1 true
effect give @s minecraft:regeneration 5 0 true
effect give @s minecraft:saturation 1 0 true
effect give @s minecraft:glowing 300 0 true
team join dep_dragon_purple @s
scoreboard players set @s dep.boon_timer -1
