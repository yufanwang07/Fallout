#> fallout_smp:legendary/pale_blade/player_tick

scoreboard players operation #dep.current dep.owner_id = @s dep.player_id
tag @e[type=interaction,tag=dep_pale_sensor_match] remove dep_pale_sensor_match
execute as @e[type=interaction,tag=dep_pale_sensor] if score @s dep.owner_id = #dep.current dep.owner_id run tag @s add dep_pale_sensor_match
kill @e[type=interaction,tag=dep_pale_sensor_match,tag=!dep_pale_sensor_0,tag=!dep_pale_sensor_1,tag=!dep_pale_sensor_2,tag=!dep_pale_sensor_3,tag=!dep_pale_sensor_4,tag=!dep_pale_sensor_5,tag=!dep_pale_sensor_6,tag=!dep_pale_sensor_7,tag=!dep_pale_sensor_8,tag=!dep_pale_sensor_9,tag=!dep_pale_sensor_10,tag=!dep_pale_sensor_11,tag=!dep_pale_sensor_12,tag=!dep_pale_sensor_13,tag=!dep_pale_sensor_14,tag=!dep_pale_sensor_15,tag=!dep_pale_sensor_16,tag=!dep_pale_sensor_17,tag=!dep_pale_sensor_18,tag=!dep_pale_sensor_19]
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] player_tick_holding","color":"gray"}
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] run function fallout_smp:legendary/pale_blade/sensor_update
tag @e[tag=dep_pale_fallback_target] remove dep_pale_fallback_target
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] unless entity @s[tag=dep_pale_sweeping] if score @s dep.pale_cd matches 8.. at @s as @e[type=!minecraft:player,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,distance=..4.5,sort=nearest,limit=1,nbt={HurtTime:10s}] unless score @s dep.pale_seen matches 1.. run tag @s add dep_pale_fallback_target
execute if entity @e[tag=dep_pale_fallback_target,limit=1] run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] fallback_target","color":"gray"}
execute if entity @e[tag=dep_pale_fallback_target,limit=1] run function fallout_smp:legendary/pale_blade/on_hit
tag @e[tag=dep_pale_fallback_target] remove dep_pale_fallback_target
execute unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] run kill @e[type=interaction,tag=dep_pale_sensor_match]
tag @e[type=interaction,tag=dep_pale_sensor_match] remove dep_pale_sensor_match
