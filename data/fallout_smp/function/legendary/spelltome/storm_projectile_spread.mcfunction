#> fallout_smp:legendary/spelltome/storm_projectile_spread

execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 1 run tp @s ~ ~ ~ ~-0.38 ~-0.16
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 2 run tp @s ~ ~ ~ ~0.00 ~-0.16
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 3 run tp @s ~ ~ ~ ~0.38 ~-0.16
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 4 run tp @s ~ ~ ~ ~-0.38 ~0.00
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 5 run tp @s ~ ~ ~ ~0.00 ~0.00
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 6 run tp @s ~ ~ ~ ~0.38 ~0.00
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 7 run tp @s ~ ~ ~ ~-0.38 ~0.16
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 8 run tp @s ~ ~ ~ ~0.00 ~0.16
execute unless score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 9 run tp @s ~ ~ ~ ~0.38 ~0.16
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 1 run tp @s ~ ~ ~ ~-0.16 ~-0.06
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 2 run tp @s ~ ~ ~ ~0.00 ~-0.06
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 3 run tp @s ~ ~ ~ ~0.16 ~-0.06
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 4 run tp @s ~ ~ ~ ~-0.16 ~0.00
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 5 run tp @s ~ ~ ~ ~0.00 ~0.00
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 6 run tp @s ~ ~ ~ ~0.16 ~0.00
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 7 run tp @s ~ ~ ~ ~-0.16 ~0.06
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 8 run tp @s ~ ~ ~ ~0.00 ~0.06
execute if score @s dep.tome_theme matches 5 if score #dep.tome_spread dep.rand matches 9 run tp @s ~ ~ ~ ~0.16 ~0.06
