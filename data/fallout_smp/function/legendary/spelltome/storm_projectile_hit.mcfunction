#> fallout_smp:legendary/spelltome/storm_projectile_hit

tag @s add dep_tome_storm_done
function fallout_smp:legendary/spelltome/projectile_mark_owner
function fallout_smp:legendary/spelltome/storm_projectile_impact
tag @e[tag=dep_tome_storm_target] remove dep_tome_storm_target
tag @e[distance=..5,tag=!dep_tome_projectile_owner,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:arrow,type=!minecraft:spectral_arrow,type=!minecraft:trident,type=!minecraft:armor_stand,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:painting,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:spawner_minecart,type=!minecraft:tnt_minecart,type=!minecraft:end_crystal] add dep_tome_storm_target
execute if score @s dep.tome_theme matches 1 as @e[tag=dep_tome_storm_target,type=!minecraft:player] run data merge entity @s {Fire:80s}
function fallout_smp:legendary/spelltome/storm_theme_effects
execute if score @s dep.tome_charge matches ..19 as @e[tag=dep_tome_storm_target] run damage @s 5 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
execute if score @s dep.tome_charge matches 20..39 as @e[tag=dep_tome_storm_target] run damage @s 7 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
execute if score @s dep.tome_charge matches 40..59 as @e[tag=dep_tome_storm_target] run damage @s 7 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
execute if score @s dep.tome_charge matches 60.. as @e[tag=dep_tome_storm_target] run damage @s 9 minecraft:magic by @a[tag=dep_tome_projectile_owner,limit=1]
tag @e[tag=dep_tome_storm_target] remove dep_tome_storm_target
function fallout_smp:legendary/spelltome/projectile_clear_owner
kill @s
