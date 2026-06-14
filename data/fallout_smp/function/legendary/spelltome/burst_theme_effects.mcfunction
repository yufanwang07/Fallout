#> fallout_smp:legendary/spelltome/burst_theme_effects

execute if score @s dep.tome_theme matches 4 as @e[tag=dep_tome_burst_target] run effect give @s minecraft:blindness 4 0 true
execute if score @s dep.tome_theme matches 4 as @e[tag=dep_tome_burst_target] run effect give @s minecraft:darkness 5 0 true
execute if score @s dep.tome_theme matches 4 as @e[tag=dep_tome_burst_target] run effect give @s minecraft:slowness 5 1 true
execute if score @s dep.tome_theme matches 4 as @e[tag=dep_tome_burst_target] run effect give @s minecraft:mining_fatigue 5 0 true
execute if score @s dep.tome_theme matches 3 if score @s dep.tome_charge matches ..19 as @e[tag=dep_tome_burst_target] unless entity @s[type=minecraft:player] run data merge entity @s {TicksFrozen:90}
execute if score @s dep.tome_theme matches 3 if score @s dep.tome_charge matches 20..39 as @e[tag=dep_tome_burst_target] unless entity @s[type=minecraft:player] run data merge entity @s {TicksFrozen:130}
execute if score @s dep.tome_theme matches 3 if score @s dep.tome_charge matches 40..59 as @e[tag=dep_tome_burst_target] unless entity @s[type=minecraft:player] run data merge entity @s {TicksFrozen:170}
execute if score @s dep.tome_theme matches 3 if score @s dep.tome_charge matches 60.. as @e[tag=dep_tome_burst_target] unless entity @s[type=minecraft:player] run data merge entity @s {TicksFrozen:220}
