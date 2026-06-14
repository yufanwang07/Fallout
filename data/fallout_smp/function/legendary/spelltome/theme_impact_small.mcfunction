#> fallout_smp:legendary/spelltome/theme_impact_small

particle minecraft:flash{color:2147483647} ~ ~ ~ 0 0 0 0 1 force @a
execute if score @s dep.tome_theme matches 1 run particle minecraft:flame ~ ~ ~ 0.70 0.70 0.70 0.035 42 force @a
execute if score @s dep.tome_theme matches 1 run particle minecraft:lava ~ ~0.2 ~ 0.45 0.30 0.45 0.02 5 force @a
execute if score @s dep.tome_theme matches 1 run particle minecraft:dust{color:[1.0,0.48,0.10],scale:0.85} ~ ~ ~ 0.85 0.85 0.85 0 28 force @a
execute if score @s dep.tome_theme matches 1 run playsound minecraft:entity.blaze.shoot master @a[distance=..24] ~ ~ ~ 0.85 1.65
execute if score @s dep.tome_theme matches 3 run particle minecraft:snowflake ~ ~ ~ 0.65 0.65 0.65 0.025 24 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:white_ash ~ ~ ~ 0.65 0.65 0.65 0.005 18 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:wax_off ~ ~ ~ 0.48 0.48 0.48 0 10 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:scrape ~ ~ ~ 0.42 0.42 0.42 0 8 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:dust{color:[0.82,0.96,1.0],scale:0.36} ~ ~ ~ 0.50 0.50 0.50 0 12 force @a
execute if score @s dep.tome_theme matches 3 run playsound minecraft:block.glass.break master @a[distance=..24] ~ ~ ~ 0.75 1.75
execute if score @s dep.tome_theme matches 4 run particle minecraft:reverse_portal ~ ~ ~ 1.0 1.0 1.0 0.10 40 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:witch ~ ~ ~ 0.85 0.85 0.85 0.06 28 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:enchant ~ ~ ~ 1.1 1.1 1.1 0.25 34 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:dust{color:[0.76,0.42,1.0],scale:0.75} ~ ~ ~ 0.85 0.85 0.85 0 24 force @a
execute if score @s dep.tome_theme matches 4 run playsound minecraft:block.enchantment_table.use master @a[distance=..24] ~ ~ ~ 0.85 1.45
execute if score @s dep.tome_theme matches 5 run particle minecraft:sculk_soul ~ ~ ~ 0.95 0.95 0.95 0.08 34 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:soul_fire_flame ~ ~ ~ 0.65 0.65 0.65 0.03 20 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:dust{color:[0.0,0.36,0.40],scale:0.85} ~ ~ ~ 0.85 0.85 0.85 0 24 force @a
execute if score @s dep.tome_theme matches 5 run playsound minecraft:entity.warden.sonic_boom master @a[distance=..32] ~ ~ ~ 0.85 1.65
