#> fallout_smp:legendary/spelltome/storm_golden_cycle

function fallout_smp:legendary/spelltome/storm_charge_visuals

execute if score @s dep.tome_charge matches ..19 if score @s dep.tome_storm_tick matches 1 positioned ^ ^3 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches ..19 if score @s dep.tome_storm_tick matches 1 run function fallout_smp:legendary/spelltome/storm_projectile_setup

execute if score @s dep.tome_charge matches 20..39 if score @s dep.tome_storm_tick matches 1 positioned ^2 ^2.6 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 20..39 if score @s dep.tome_storm_tick matches 1 run function fallout_smp:legendary/spelltome/storm_projectile_setup
execute if score @s dep.tome_charge matches 20..39 if score @s dep.tome_storm_tick matches 3 positioned ^-2 ^2.6 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 20..39 if score @s dep.tome_storm_tick matches 3 run function fallout_smp:legendary/spelltome/storm_projectile_setup

execute if score @s dep.tome_charge matches 40..59 if score @s dep.tome_storm_tick matches 1 positioned ^ ^3 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 40..59 if score @s dep.tome_storm_tick matches 1 run function fallout_smp:legendary/spelltome/storm_projectile_setup
execute if score @s dep.tome_charge matches 40..59 if score @s dep.tome_storm_tick matches 3 positioned ^2 ^2.6 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 40..59 if score @s dep.tome_storm_tick matches 3 run function fallout_smp:legendary/spelltome/storm_projectile_setup
execute if score @s dep.tome_charge matches 40..59 if score @s dep.tome_storm_tick matches 5 positioned ^-2 ^2.6 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 40..59 if score @s dep.tome_storm_tick matches 5 run function fallout_smp:legendary/spelltome/storm_projectile_setup

execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 1 positioned ^2 ^2.6 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 1 run function fallout_smp:legendary/spelltome/storm_projectile_setup
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 3 positioned ^4 ^1.8 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 3 run function fallout_smp:legendary/spelltome/storm_projectile_setup
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 5 positioned ^-2 ^2.6 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 5 run function fallout_smp:legendary/spelltome/storm_projectile_setup
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 7 positioned ^-4 ^1.8 ^-2 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^ {Duration:60,WaitTime:0,Radius:0f,Tags:["dep_tome_storm_projectile","dep_tome_storm_new"],CustomName:'{"text":"dep_tome_storm"}',Silent:1b,NoGravity:1b}
execute if score @s dep.tome_charge matches 60.. if score @s dep.tome_storm_tick matches 7 run function fallout_smp:legendary/spelltome/storm_projectile_setup

execute if score @s dep.tome_storm_tick matches 8.. run scoreboard players set @s dep.tome_storm_tick 0
