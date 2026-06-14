#> fallout_smp:legendary/spelltome/burst_projectile_ground_hit

tag @s add dep_tome_burst_done
execute if score @s dep.tome_charge matches 20..39 positioned ^ ^ ^-0.8 run function fallout_smp:legendary/spelltome/burst_impact_tier_2
execute if score @s dep.tome_charge matches 40.. positioned ^ ^ ^-0.8 run function fallout_smp:legendary/spelltome/burst_impact
execute if score @s dep.tome_charge matches ..19 positioned ^ ^ ^-0.8 run function fallout_smp:legendary/spelltome/burst_projectile_spark
function fallout_smp:legendary/spelltome/projectile_clear_owner
kill @s
