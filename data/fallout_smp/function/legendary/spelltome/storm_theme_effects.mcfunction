#> fallout_smp:legendary/spelltome/storm_theme_effects

execute if score @s dep.tome_theme matches 3 as @e[tag=dep_tome_storm_target] unless entity @s[type=minecraft:player] run data merge entity @s {TicksFrozen:35}
