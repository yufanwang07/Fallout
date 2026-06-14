#> fallout_smp:legendary/spelltome/burst_projectile_tick_move

function fallout_smp:legendary/spelltome/burst_projectile_step
execute if score @s dep.tome_charge matches 60.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_particles_max
execute if score @s dep.tome_charge matches 60.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_step
execute if score @s dep.tome_charge matches 60.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_particles_max
execute if score @s dep.tome_charge matches 60.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_step
execute if score @s dep.tome_charge matches 60.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_particles_max
execute if score @s dep.tome_charge matches 60.. if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_step
execute if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/burst_projectile_particles
