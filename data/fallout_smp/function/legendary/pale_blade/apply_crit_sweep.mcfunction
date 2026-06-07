#> fallout_smp:legendary/pale_blade/apply_crit_sweep

tag @e[tag=dep_pale_primary] remove dep_pale_primary
tag @e[tag=dep_pale_sweep_target] remove dep_pale_sweep_target
tag @s add dep_pale_primary
tag @s add dep_pale_sweeping
execute positioned ~-1.625 ~-3.25 ~-1.625 as @e[dx=3.25,dy=6.5,dz=3.25,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:arrow,type=!minecraft:spectral_arrow,type=!minecraft:trident,type=!minecraft:armor_stand,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:painting,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:spawner_minecart,type=!minecraft:tnt_minecart,type=!minecraft:end_crystal] unless entity @s[tag=dep_pale_primary] unless entity @s[tag=dep_pale_sweep_owner] run tag @s add dep_pale_sweep_target
execute as @e[tag=dep_pale_sweep_target] run function fallout_smp:legendary/pale_blade/deal_sweep_damage
tag @e[tag=dep_pale_sweep_target] remove dep_pale_sweep_target
tag @s remove dep_pale_sweeping
tag @s remove dep_pale_primary
