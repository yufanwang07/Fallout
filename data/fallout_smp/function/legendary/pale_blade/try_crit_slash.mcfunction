#> fallout_smp:legendary/pale_blade/try_crit_slash

tellraw @a[tag=convention.debug] {"text":"[Pale Blade] try_crit_slash","color":"white"}

tag @e[tag=dep_pale_target] remove dep_pale_target
execute if entity @e[tag=dep_pale_real_hit,limit=1] as @e[tag=dep_pale_real_hit,limit=1] run tag @s add dep_pale_target
execute unless entity @e[tag=dep_pale_target,limit=1] at @s as @e[type=!minecraft:player,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,distance=..4.5,sort=nearest,limit=1,nbt={HurtTime:10s}] run tag @s add dep_pale_target

execute if score @s dep.pale_pattern matches 0 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] crit_pattern_0","color":"gray"}
execute if score @s dep.pale_pattern matches 1 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] crit_pattern_1","color":"gray"}
execute if score @s dep.pale_pattern matches 2 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] crit_pattern_2","color":"gray"}
execute if score @s dep.pale_pattern matches 3 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] crit_pattern_3","color":"gray"}
execute unless score @s dep.rand matches 0..4 run scoreboard players set @s dep.rand 0
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 0 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_0
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 1 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_1
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 2 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_2
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 3 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_3
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 4 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_4
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 0 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_0
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 1 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_1
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 2 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_2
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 3 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_3
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.rand matches 4 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/crit_render_dispatch_roll_4
scoreboard players add @s dep.rand 1
execute if score @s dep.rand matches 5.. run scoreboard players set @s dep.rand 0
function fallout_smp:legendary/pale_blade/prepare_sweep_damage
tag @s add dep_pale_sweep_owner
function fallout_smp:legendary/pale_blade/resolve_sweep_damage
execute if entity @e[tag=dep_pale_target,limit=1] at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/apply_crit_sweep
tag @s remove dep_pale_sweep_owner

tag @e[tag=dep_pale_target] remove dep_pale_target
