#> fallout_smp:legendary/spelltome/storm_projectile_tick

scoreboard players add @s dep.tome_ray 1
execute if score @s dep.tome_ray matches 2 run playsound minecraft:entity.evoker.cast_spell master @a[distance=..28] ~ ~ ~ 1.0 2.0
execute if score @s dep.tome_ray matches 2 run playsound minecraft:entity.illusioner.mirror_move master @a[distance=..28] ~ ~ ~ 1.0 2.0
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 1 run function fallout_smp:legendary/spelltome/projectile_sonic_line
execute unless score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 3.. run function fallout_smp:legendary/spelltome/storm_projectile_tick_move
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 9.. run function fallout_smp:legendary/spelltome/storm_projectile_tick_move
execute unless score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 40.. if entity @s[tag=!dep_tome_storm_done] run function fallout_smp:legendary/spelltome/storm_projectile_miss
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 48.. if entity @s[tag=!dep_tome_storm_done] run function fallout_smp:legendary/spelltome/storm_projectile_miss
