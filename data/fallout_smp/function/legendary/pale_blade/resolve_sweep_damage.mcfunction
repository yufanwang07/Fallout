#> fallout_smp:legendary/pale_blade/resolve_sweep_damage

scoreboard players set @s dep.sweep_damage 8
execute if entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 0 run scoreboard players set @s dep.sweep_damage 6
execute if entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 1 run scoreboard players set @s dep.sweep_damage 9
execute if entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 2 run scoreboard players set @s dep.sweep_damage 12
execute if entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 3.. run scoreboard players set @s dep.sweep_damage 15
execute unless entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 0 run scoreboard players set @s dep.sweep_damage 8
execute unless entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 1 run scoreboard players set @s dep.sweep_damage 12
execute unless entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 2 run scoreboard players set @s dep.sweep_damage 16
execute unless entity @s[tag=dep_pale_miss_sweep] if score @s dep.sweep_lvl matches 3.. run scoreboard players set @s dep.sweep_damage 20
execute if score @s dep.sharp_lvl matches 1 run scoreboard players add @s dep.sweep_damage 2
execute if score @s dep.sharp_lvl matches 2 run scoreboard players add @s dep.sweep_damage 3
execute if score @s dep.sharp_lvl matches 3 run scoreboard players add @s dep.sweep_damage 4
execute if score @s dep.sharp_lvl matches 4 run scoreboard players add @s dep.sweep_damage 5
execute if score @s dep.sharp_lvl matches 5.. run scoreboard players add @s dep.sweep_damage 6
