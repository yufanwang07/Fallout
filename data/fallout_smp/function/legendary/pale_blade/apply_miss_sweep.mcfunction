#> fallout_smp:legendary/pale_blade/apply_miss_sweep

function fallout_smp:legendary/pale_blade/prepare_sweep_damage
tag @e[tag=dep_pale_sweep_target] remove dep_pale_sweep_target
tag @s add dep_pale_sweeping
tag @s add dep_pale_miss_sweep
tag @s add dep_pale_sweep_owner
function fallout_smp:legendary/pale_blade/resolve_sweep_damage
execute positioned ~-2.25 ~-1.00 ~-1.25 as @e[dx=4.5,dy=2.0,dz=2.5,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:arrow,type=!minecraft:spectral_arrow,type=!minecraft:trident,type=!minecraft:armor_stand,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:painting,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:spawner_minecart,type=!minecraft:tnt_minecart,type=!minecraft:end_crystal] unless entity @s[tag=dep_pale_sweep_owner] run tag @s add dep_pale_sweep_target
execute positioned ~-1.25 ~-1.00 ~-2.25 as @e[dx=2.5,dy=2.0,dz=4.5,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:arrow,type=!minecraft:spectral_arrow,type=!minecraft:trident,type=!minecraft:armor_stand,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:painting,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:spawner_minecart,type=!minecraft:tnt_minecart,type=!minecraft:end_crystal] unless entity @s[tag=dep_pale_sweep_owner] run tag @s add dep_pale_sweep_target
execute unless entity @e[tag=dep_pale_sweep_target,limit=1] run playsound minecraft:entity.player.attack.sweep master @a[distance=..24] ~ ~ ~ 0.3 1
execute as @e[tag=dep_pale_sweep_target] run function fallout_smp:legendary/pale_blade/deal_sweep_damage
tag @s remove dep_pale_sweep_owner
tag @s remove dep_pale_miss_sweep
tag @s remove dep_pale_sweeping
tag @e[tag=dep_pale_sweep_target] remove dep_pale_sweep_target
