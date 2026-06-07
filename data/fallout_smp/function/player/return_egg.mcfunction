#> fallout_smp:player/return_egg

loot give @s loot fallout_smp:items/dragon_egg
tellraw @s {"text":"The Dragon Egg reforms in your hands.","color":"dark_purple"}
playsound minecraft:entity.ender_dragon.flap master @s ~ ~ ~ 1 0.8
scoreboard players set @s dep.warned 0
scoreboard players set @s dep.reform_timer 0
