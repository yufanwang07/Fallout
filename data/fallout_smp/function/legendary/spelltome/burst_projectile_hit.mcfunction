#> fallout_smp:legendary/spelltome/burst_projectile_hit

tag @s add dep_tome_burst_done
function fallout_smp:legendary/spelltome/projectile_mark_owner
tag @e[tag=dep_tome_burst_target] remove dep_tome_burst_target
tag @e[distance=..2.3,tag=!dep_tome_projectile_owner,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:arrow,type=!minecraft:spectral_arrow,type=!minecraft:trident,type=!minecraft:armor_stand,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:painting,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:spawner_minecart,type=!minecraft:tnt_minecart,type=!minecraft:end_crystal,sort=nearest,limit=1] add dep_tome_burst_target
execute if score @s dep.tome_charge matches 20..39 at @e[tag=dep_tome_burst_target,limit=1] run function fallout_smp:legendary/spelltome/burst_impact_tier_2
execute if score @s dep.tome_charge matches 40.. at @e[tag=dep_tome_burst_target,limit=1] run function fallout_smp:legendary/spelltome/burst_impact
execute if score @s dep.tome_theme matches 1 as @e[tag=dep_tome_burst_target,type=!minecraft:player] run data merge entity @s {Fire:100s}
function fallout_smp:legendary/spelltome/burst_theme_effects
execute if score @s dep.tome_charge matches ..19 run damage @e[tag=dep_tome_burst_target,limit=1] 4 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
execute if score @s dep.tome_charge matches 20..39 run damage @e[tag=dep_tome_burst_target,limit=1] 7 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
execute if score @s dep.tome_charge matches 40..59 run damage @e[tag=dep_tome_burst_target,limit=1] 13 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
execute if score @s dep.tome_charge matches 60.. run damage @e[tag=dep_tome_burst_target,limit=1] 19 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
tag @e[tag=dep_tome_burst_target] remove dep_tome_burst_target
function fallout_smp:legendary/spelltome/projectile_clear_owner
kill @s
