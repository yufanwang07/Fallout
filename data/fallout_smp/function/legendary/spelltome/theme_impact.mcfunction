#> fallout_smp:legendary/spelltome/theme_impact

function fallout_smp:legendary/spelltome/theme_impact_small
execute if score @s dep.tome_theme matches 1 run particle minecraft:explosion ~ ~1 ~ 1.2 1.1 1.2 0 6 force @a
execute if score @s dep.tome_theme matches 1 run particle minecraft:flame ~ ~1 ~ 1.5 1.2 1.5 0.08 70 force @a
execute if score @s dep.tome_theme matches 1 run particle minecraft:lava ~ ~1 ~ 1.2 0.9 1.2 0.06 12 force @a
execute if score @s dep.tome_theme matches 1 run particle minecraft:dust{color:[1.0,0.64,0.18],scale:1.0} ~ ~1 ~ 1.3 1.1 1.3 0 36 force @a
execute if score @s dep.tome_theme matches 1 run playsound minecraft:entity.generic.explode master @a[distance=..32] ~ ~ ~ 0.75 1.45
execute if score @s dep.tome_theme matches 3 run particle minecraft:snowflake ~ ~1 ~ 1.0 0.8 1.0 0.03 36 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:white_ash ~ ~1 ~ 1.0 0.8 1.0 0.008 28 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:wax_off ~ ~1 ~ 0.8 0.55 0.8 0 16 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:scrape ~ ~1 ~ 0.7 0.5 0.7 0 14 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:dust{color:[0.88,0.98,1.0],scale:0.50} ~ ~1 ~ 0.9 0.7 0.9 0 18 force @a
execute if score @s dep.tome_theme matches 3 run playsound minecraft:block.amethyst_cluster.break master @a[distance=..32] ~ ~ ~ 1.0 1.65
execute if score @s dep.tome_theme matches 4 run particle minecraft:enchant ~ ~1 ~ 1.8 1.3 1.8 0.35 70 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:reverse_portal ~ ~1 ~ 1.7 1.3 1.7 0.11 60 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:witch ~ ~1 ~ 1.3 1.0 1.3 0.06 34 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:dust{color:[0.88,0.70,1.0],scale:0.95} ~ ~1 ~ 1.2 1.0 1.2 0 30 force @a
execute if score @s dep.tome_theme matches 4 run playsound minecraft:entity.evoker.cast_spell master @a[distance=..32] ~ ~ ~ 1.0 1.35
execute if score @s dep.tome_theme matches 5 run particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:sculk_soul ~ ~1 ~ 1.6 1.1 1.6 0.10 58 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:soul_fire_flame ~ ~1 ~ 1.4 1.1 1.4 0.04 40 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:dust{color:[0.0,0.42,0.46],scale:1.0} ~ ~1 ~ 1.2 1.0 1.2 0 32 force @a
execute if score @s dep.tome_theme matches 5 run playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..32] ~ ~ ~ 0.9 1.4
