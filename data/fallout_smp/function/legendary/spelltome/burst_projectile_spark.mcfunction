#> fallout_smp:legendary/spelltome/burst_projectile_spark

function fallout_smp:legendary/spelltome/projectile_trail_cloud
function fallout_smp:legendary/spelltome/projectile_trail_point
execute if score @s dep.tome_theme matches 1 run particle minecraft:flame ~ ~ ~ 1 1 1 0.05 10 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:squid_ink ~ ~ ~ 0.8 0.8 0.8 0.02 8 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:snowflake ~ ~ ~ 0.8 0.8 0.8 0.02 10 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:reverse_portal ~ ~ ~ 0.8 0.8 0.8 0.06 10 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:sculk_soul ~ ~ ~ 0.8 0.8 0.8 0.04 10 force @a
