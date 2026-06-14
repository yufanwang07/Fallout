#> fallout_smp:legendary/spelltome/burst_projectile_particles

execute if score @s dep.tome_charge matches ..19 run function fallout_smp:legendary/spelltome/burst_projectile_particles_weak
execute if score @s dep.tome_charge matches 20..39 run function fallout_smp:legendary/spelltome/burst_projectile_particles_medium
execute if score @s dep.tome_charge matches 40..59 run function fallout_smp:legendary/spelltome/burst_projectile_spark
execute if score @s dep.tome_charge matches 60.. run function fallout_smp:legendary/spelltome/burst_projectile_particles_max
