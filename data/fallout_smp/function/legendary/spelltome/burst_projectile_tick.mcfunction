#> fallout_smp:legendary/spelltome/burst_projectile_tick

scoreboard players add @s dep.tome_ray 1
execute if score @s dep.tome_ray matches 1 run playsound minecraft:entity.evoker.cast_spell master @a[distance=..28] ~ ~ ~ 1.25 1.35
function fallout_smp:legendary/spelltome/projectile_mark_owner
execute if score @s dep.tome_ray matches ..2 if entity @a[tag=dep_tome_projectile_owner,limit=1] rotated as @a[tag=dep_tome_projectile_owner,limit=1] run tp @s ^ ^ ^ ~ ~
function fallout_smp:legendary/spelltome/projectile_clear_owner
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 1 run function fallout_smp:legendary/spelltome/projectile_sonic_line
execute unless score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 3.. run function fallout_smp:legendary/spelltome/burst_projectile_tick_move
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_ray matches 9.. run function fallout_smp:legendary/spelltome/burst_projectile_tick_move
execute unless score @s dep.tome_theme matches 5 if score @s dep.tome_charge matches ..59 if score @s dep.tome_ray matches 18.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_miss
execute unless score @s dep.tome_theme matches 5 if score @s dep.tome_charge matches 60.. if score @s dep.tome_ray matches 50.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_miss
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_charge matches ..59 if score @s dep.tome_ray matches 26.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_miss
execute if score @s dep.tome_theme matches 5 if score @s dep.tome_charge matches 60.. if score @s dep.tome_ray matches 58.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_miss
