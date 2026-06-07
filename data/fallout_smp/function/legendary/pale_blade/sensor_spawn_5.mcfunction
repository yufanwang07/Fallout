#> fallout_smp:legendary/pale_blade/sensor_spawn_5

summon minecraft:interaction ~ ~ ~ {Tags:["dep_pale_sensor","dep_pale_sensor_5","dep_pale_sensor_new"],width:0.68f,height:0.68f,response:0b}
scoreboard players operation @e[type=interaction,tag=dep_pale_sensor_new,sort=nearest,limit=1] dep.owner_id = #dep.current dep.owner_id
scoreboard players set @e[type=interaction,tag=dep_pale_sensor_new,sort=nearest,limit=1] dep.pale_seen 0
execute if entity @e[type=interaction,tag=dep_pale_sensor_new,limit=1] run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] sensor_spawn_5","color":"gray"}
tag @e[type=interaction,tag=dep_pale_sensor_new,sort=nearest,limit=1] remove dep_pale_sensor_new
