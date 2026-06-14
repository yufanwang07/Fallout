#> fallout_smp:legendary/spelltome/burst_charge_ring_particle

execute if score @s dep.tome_theme matches 1 run particle minecraft:flame ~ ~ ~ 0.012 0.012 0.012 0 1 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:ash ~ ~ ~ 0.012 0.012 0.012 0 1 force @a
execute if score @s dep.tome_theme matches 2 run particle minecraft:dust{color:[0.012,0.010,0.018],scale:0.32} ~ ~ ~ 0.012 0.012 0.012 0 1 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:snowflake ~ ~ ~ 0.012 0.012 0.012 0 1 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:wax_off ~ ~ ~ 0.010 0.010 0.010 0 1 force @a
execute if score @s dep.tome_theme matches 3 run particle minecraft:dust{color:[0.72,0.94,1.0],scale:0.26} ~ ~ ~ 0.010 0.010 0.010 0 1 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:enchant ~ ~ ~ 0.02 0.02 0.02 0 2 force @a
execute if score @s dep.tome_theme matches 4 run particle minecraft:dust{color:[0.70,0.36,1.0],scale:0.42} ~ ~ ~ 0.015 0.015 0.015 0 1 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:soul_fire_flame ~ ~ ~ 0.02 0.02 0.02 0 1 force @a
execute if score @s dep.tome_theme matches 5 run particle minecraft:dust{color:[0.0,0.28,0.32],scale:0.45} ~ ~ ~ 0.015 0.015 0.015 0 1 force @a
