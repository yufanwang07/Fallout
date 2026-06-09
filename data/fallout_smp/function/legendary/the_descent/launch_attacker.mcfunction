#> fallout_smp:legendary/the_descent/launch_attacker

tag @s add dep_descent_rebounded
tag @s add dep_descent_rebound_lock
tag @s add dep_descent_blindness
tag @s add dep_descent_darkness
tag @s add dep_descent_resistance
scoreboard players set @s dep.descent_vision_timer 10
scoreboard players set @s dep.descent_dark_timer 15
scoreboard players set @s dep.descent_resist_timer 5
effect give @s minecraft:darkness 1 0 true
effect give @s minecraft:blindness 1 0 true
effect give @s minecraft:resistance 1 4 true

scoreboard players operation @s dep.descent_extra = @s dep.descent_fall
scoreboard players operation @s dep.descent_extra *= #dep.4 dep.config
scoreboard players operation @s dep.descent_extra /= #dep.5 dep.config
execute if score @s dep.descent_extra < #dep.700 dep.config run scoreboard players operation @s dep.descent_extra = #dep.700 dep.config
execute store result score @s dep.descent_y run data get entity @s Pos[1] 100
scoreboard players operation @s dep.descent_rebound_y = @s dep.descent_y
scoreboard players operation @s dep.descent_rebound_y += @s dep.descent_extra

data modify storage fallout_smp:main descent.rebound set value {x:0.0,y:0.0,z:0.0}
data modify storage fallout_smp:main descent.rebound.x set from entity @s Pos[0]
execute store result storage fallout_smp:main descent.rebound.y double 0.01 run scoreboard players get @s dep.descent_rebound_y
data modify storage fallout_smp:main descent.rebound.z set from entity @s Pos[2]
function fallout_smp:legendary/the_descent/rebound with storage fallout_smp:main descent.rebound

scoreboard players set @s dep.descent_fall_memory 0
scoreboard players set @s dep.descent_fall_seen 0
scoreboard players set @s dep.descent_fall_timer 0

particle minecraft:soul ~ ~0.8 ~ 0.55 0.8 0.55 0.08 34 force
particle minecraft:soul_fire_flame ~ ~0.65 ~ 0.45 0.7 0.45 0.05 22 force
particle minecraft:dust{color:[0.0,0.0,0.0],scale:1.25} ~ ~0.8 ~ 0.55 0.8 0.55 0.05 42 force
