#> fallout_smp:legendary/spelltome/burst_charge_visuals

execute anchored eyes positioned ^ ^ ^2.35 rotated as @s run function fallout_smp:legendary/spelltome/storm_spell_circle_random

execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 20..39 run function fallout_smp:legendary/spelltome/burst_charge_ring_1
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 20..39 run function fallout_smp:legendary/spelltome/burst_charge_ring_2
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 40..59 run function fallout_smp:legendary/spelltome/burst_charge_ring_1
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 40..59 run function fallout_smp:legendary/spelltome/burst_charge_ring_2
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 40..59 run function fallout_smp:legendary/spelltome/burst_charge_ring_3
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 60.. run function fallout_smp:legendary/spelltome/burst_charge_ring_1
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 60.. run function fallout_smp:legendary/spelltome/burst_charge_ring_2
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 60.. run function fallout_smp:legendary/spelltome/burst_charge_ring_3
execute anchored eyes positioned ^ ^ ^2.35 rotated as @s if score @s dep.tome_charge matches 60.. run function fallout_smp:legendary/spelltome/burst_charge_ring_4
execute if score @s dep.tome_charge matches 60.. positioned ~ ~1.1 ~ run function fallout_smp:legendary/spelltome/theme_detection_cloud
