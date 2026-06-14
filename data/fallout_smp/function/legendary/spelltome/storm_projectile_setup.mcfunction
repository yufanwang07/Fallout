#> fallout_smp:legendary/spelltome/storm_projectile_setup

kill @e[type=marker,tag=dep_tome_storm_aim,distance=..160]
execute anchored eyes positioned ^ ^ ^75 run summon minecraft:marker ~ ~ ~ {Tags:["dep_tome_storm_aim"]}
scoreboard players operation @e[type=area_effect_cloud,tag=dep_tome_storm_new,sort=nearest,limit=1] dep.owner_id = @s dep.player_id
scoreboard players operation @e[type=area_effect_cloud,tag=dep_tome_storm_new,sort=nearest,limit=1] dep.tome_charge = @s dep.tome_charge
scoreboard players operation @e[type=area_effect_cloud,tag=dep_tome_storm_new,sort=nearest,limit=1] dep.tome_theme = @s dep.tome_theme
execute as @e[type=area_effect_cloud,tag=dep_tome_storm_new,sort=nearest,limit=1] at @s facing entity @e[type=marker,tag=dep_tome_storm_aim,sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute store result score #dep.tome_spread dep.rand run random value 1..9
execute as @e[type=area_effect_cloud,tag=dep_tome_storm_new,sort=nearest,limit=1] at @s run function fallout_smp:legendary/spelltome/storm_projectile_spread
tag @e[type=area_effect_cloud,tag=dep_tome_storm_new,sort=nearest,limit=1] remove dep_tome_storm_new
kill @e[type=marker,tag=dep_tome_storm_aim,distance=..160]
