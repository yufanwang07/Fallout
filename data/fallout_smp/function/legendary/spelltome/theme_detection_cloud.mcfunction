#> fallout_smp:legendary/spelltome/theme_detection_cloud

execute if score @s dep.tome_theme matches 1 run particle minecraft:trial_spawner_detection ~ ~ ~ 1.2 0.9 1.2 0.08 10 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:squid_ink ~ ~ ~ 0.7 0.45 0.7 0.01 8 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:witch ~ ~ ~ 0.7 0.45 0.7 0.02 8 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:dust{color:[0.025,0.012,0.055],scale:0.34} ~ ~ ~ 0.55 0.35 0.55 0 8 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:snowflake ~ ~ ~ 0.65 0.45 0.65 0.02 8 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:white_ash ~ ~ ~ 0.65 0.45 0.65 0.005 6 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:wax_off ~ ~ ~ 0.45 0.30 0.45 0 5 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:scrape ~ ~ ~ 0.35 0.25 0.35 0 4 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:reverse_portal ~ ~ ~ 1.1 0.9 1.1 0.08 18 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:witch ~ ~ ~ 1.0 0.8 1.0 0.03 12 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:enchant ~ ~ ~ 1.2 0.9 1.2 0.2 24 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1.2 0.9 1.2 0.08 12 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:soul_fire_flame ~ ~ ~ 1.0 0.8 1.0 0.02 10 force @a
