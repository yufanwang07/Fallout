#> fallout_smp:legendary/pale_blade/deal_sweep_damage

tag @s add dep_pale_damage_target
function fallout_smp:legendary/pale_blade/apply_short_glow
execute at @s positioned ~ ~0.05 ~ run particle minecraft:flash ~ ~ ~ 0 0 0 0 1 force
execute at @s run playsound minecraft:block.amethyst_cluster.break master @a[distance=..24] ~ ~ ~ 2.5 0.9
execute if entity @a[tag=dep_pale_sweep_owner,tag=!dep_pale_miss_sweep,limit=1] at @s positioned ~ ~1.50 ~ run function fallout_smp:legendary/pale_blade/render_sweep_hit_crit
execute if entity @a[tag=dep_pale_sweep_owner,tag=dep_pale_miss_sweep,limit=1] at @s positioned ~ ~1.50 ~ run function fallout_smp:legendary/pale_blade/render_sweep_hit
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 6 run damage @e[tag=dep_pale_damage_target,limit=1] 3 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 8 run damage @e[tag=dep_pale_damage_target,limit=1] 4 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 9 run damage @e[tag=dep_pale_damage_target,limit=1] 4.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 10 run damage @e[tag=dep_pale_damage_target,limit=1] 5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 11 run damage @e[tag=dep_pale_damage_target,limit=1] 5.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 12 run damage @e[tag=dep_pale_damage_target,limit=1] 6 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 13 run damage @e[tag=dep_pale_damage_target,limit=1] 6.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 14 run damage @e[tag=dep_pale_damage_target,limit=1] 7 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 15 run damage @e[tag=dep_pale_damage_target,limit=1] 7.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 16 run damage @e[tag=dep_pale_damage_target,limit=1] 8 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 17 run damage @e[tag=dep_pale_damage_target,limit=1] 8.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 18 run damage @e[tag=dep_pale_damage_target,limit=1] 9 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 19 run damage @e[tag=dep_pale_damage_target,limit=1] 9.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 20 run damage @e[tag=dep_pale_damage_target,limit=1] 10 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 21 run damage @e[tag=dep_pale_damage_target,limit=1] 10.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 22 run damage @e[tag=dep_pale_damage_target,limit=1] 11 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 23 run damage @e[tag=dep_pale_damage_target,limit=1] 11.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 24 run damage @e[tag=dep_pale_damage_target,limit=1] 12 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 25 run damage @e[tag=dep_pale_damage_target,limit=1] 12.5 minecraft:player_attack by @s
execute as @a[tag=dep_pale_sweep_owner,limit=1] if score @s dep.sweep_damage matches 26 run damage @e[tag=dep_pale_damage_target,limit=1] 13 minecraft:player_attack by @s
tag @s remove dep_pale_damage_target
