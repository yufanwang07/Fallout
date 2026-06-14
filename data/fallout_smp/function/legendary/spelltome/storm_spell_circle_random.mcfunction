#> fallout_smp:legendary/spelltome/storm_spell_circle_random

execute store result score #dep.tome_circle dep.rand run random value 1..3
execute if score @s dep.tome_theme matches 1 if score #dep.tome_circle dep.rand matches 1 run function fallout_smp:legendary/spelltome/storm_spell_circle_1
execute if score @s dep.tome_theme matches 1 if score #dep.tome_circle dep.rand matches 2 run function fallout_smp:legendary/spelltome/storm_spell_circle_2
execute if score @s dep.tome_theme matches 1 if score #dep.tome_circle dep.rand matches 3 run function fallout_smp:legendary/spelltome/storm_spell_circle_3
execute if score @s dep.tome_theme matches 2 if score #dep.tome_circle dep.rand matches 1 run function fallout_smp:legendary/spelltome/storm_spell_circle_black_1
execute if score @s dep.tome_theme matches 2 if score #dep.tome_circle dep.rand matches 2 run function fallout_smp:legendary/spelltome/storm_spell_circle_black_2
execute if score @s dep.tome_theme matches 2 if score #dep.tome_circle dep.rand matches 3 run function fallout_smp:legendary/spelltome/storm_spell_circle_black_3
execute if score @s dep.tome_theme matches 3 if score #dep.tome_circle dep.rand matches 1 run function fallout_smp:legendary/spelltome/storm_spell_circle_ice_1
execute if score @s dep.tome_theme matches 3 if score #dep.tome_circle dep.rand matches 2 run function fallout_smp:legendary/spelltome/storm_spell_circle_ice_2
execute if score @s dep.tome_theme matches 3 if score #dep.tome_circle dep.rand matches 3 run function fallout_smp:legendary/spelltome/storm_spell_circle_ice_3
execute if score @s dep.tome_theme matches 4 if score #dep.tome_circle dep.rand matches 1 run function fallout_smp:legendary/spelltome/storm_spell_circle_purple_1
execute if score @s dep.tome_theme matches 4 if score #dep.tome_circle dep.rand matches 2 run function fallout_smp:legendary/spelltome/storm_spell_circle_purple_2
execute if score @s dep.tome_theme matches 4 if score #dep.tome_circle dep.rand matches 3 run function fallout_smp:legendary/spelltome/storm_spell_circle_purple_3
execute if score @s dep.tome_theme matches 5 if score #dep.tome_circle dep.rand matches 1 run function fallout_smp:legendary/spelltome/storm_spell_circle_sculk_1
execute if score @s dep.tome_theme matches 5 if score #dep.tome_circle dep.rand matches 2 run function fallout_smp:legendary/spelltome/storm_spell_circle_sculk_2
execute if score @s dep.tome_theme matches 5 if score #dep.tome_circle dep.rand matches 3 run function fallout_smp:legendary/spelltome/storm_spell_circle_sculk_3
