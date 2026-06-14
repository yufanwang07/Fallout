#> fallout_smp:legendary/spelltome/theme_detection_point

execute if score @s dep.tome_theme matches 1 run particle minecraft:trial_spawner_detection ~ ~ ~ 0.02 0.02 0.02 0.6 2 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:squid_ink ~ ~ ~ 0.08 0.08 0.08 0.02 4 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:snowflake ~ ~ ~ 0.08 0.08 0.08 0.02 4 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:enchant ~ ~ ~ 0.08 0.08 0.08 0.1 6 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.02 0.02 0.02 0.6 2 force @a
