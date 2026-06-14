#> fallout_smp:legendary/spelltome/burst_projectile_step

execute unless score @s dep.tome_theme matches 5 run tp @s ^ ^ ^1.7
execute if score @s dep.tome_theme matches 5 run tp @s ^ ^ ^4.1
function fallout_smp:legendary/spelltome/projectile_mark_owner
execute if entity @s[tag=!dep_tome_burst_done] if entity @e[distance=..2.3,tag=!dep_tome_projectile_owner,type=!minecraft:area_effect_cloud,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,type=!minecraft:arrow,type=!minecraft:spectral_arrow,type=!minecraft:trident,type=!minecraft:armor_stand,type=!minecraft:item_frame,type=!minecraft:glow_item_frame,type=!minecraft:painting,type=!minecraft:minecart,type=!minecraft:chest_minecart,type=!minecraft:command_block_minecart,type=!minecraft:furnace_minecart,type=!minecraft:hopper_minecart,type=!minecraft:spawner_minecart,type=!minecraft:tnt_minecart,type=!minecraft:end_crystal,limit=1] run function fallout_smp:legendary/spelltome/burst_projectile_hit
execute if entity @s[tag=!dep_tome_burst_done] unless block ~ ~ ~ minecraft:air unless block ~ ~ ~ minecraft:cave_air unless block ~ ~ ~ minecraft:void_air run function fallout_smp:legendary/spelltome/burst_projectile_ground_hit
execute if entity @s[tag=!dep_tome_burst_done] run function fallout_smp:legendary/spelltome/projectile_clear_owner
