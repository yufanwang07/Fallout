#> fallout_smp:legendary/spelltome/selected_tick

execute if score @s dep.tome_charge matches 1.. if score @s dep.tome_using matches 1 run function fallout_smp:legendary/spelltome/release
