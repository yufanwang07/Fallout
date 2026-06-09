#> fallout_smp:player/tick

execute unless score @s dep.death_seen = @s dep.death run function fallout_smp:player/death_check

execute if score @s dep.boon_timer matches 1.. run scoreboard players remove @s dep.boon_timer 1
execute if score @s dep.boon_timer matches 0 if entity @s[tag=dep_dragon_user] run function fallout_smp:player/apply_boon

execute if score @s dep.reform_timer matches 1.. run scoreboard players remove @s dep.reform_timer 1
execute if score @s dep.reform_timer = #dep.warn_time dep.config if score @s dep.warned matches 0 run function fallout_smp:player/warn_reform
execute if score @s dep.reform_timer matches 0 if score @s dep.warned matches 1.. run function fallout_smp:player/return_egg

execute if score @s dep.glow_timer matches 1.. run scoreboard players remove @s dep.glow_timer 1
execute if score @s dep.glow_timer matches 1.. run team join dep_dragon_purple @s
execute if score @s dep.glow_timer matches 0 run team leave @s

execute if score @s dep.pale_cd matches ..39 run scoreboard players add @s dep.pale_cd 1
scoreboard players add @s dep.descent_cd 1
execute if score @s dep.descent_cd matches 200.. run scoreboard players set @s dep.descent_cd 200
execute if score @s dep.descent_vision_timer matches 1.. run scoreboard players remove @s dep.descent_vision_timer 1
execute if score @s dep.descent_dark_timer matches 1.. run scoreboard players remove @s dep.descent_dark_timer 1
execute if score @s dep.descent_resist_timer matches 1.. run scoreboard players remove @s dep.descent_resist_timer 1
execute if score @s dep.descent_vision_timer matches 0 if entity @s[tag=dep_descent_blindness] run function fallout_smp:legendary/the_descent/clear_blindness
execute if score @s dep.descent_dark_timer matches 0 if entity @s[tag=dep_descent_darkness] run function fallout_smp:legendary/the_descent/clear_darkness
execute if score @s dep.descent_resist_timer matches 0 if entity @s[tag=dep_descent_resistance] run function fallout_smp:legendary/the_descent/clear_resistance
execute store result score @s dep.descent_y run data get entity @s Pos[1] 100
scoreboard players operation @s dep.descent_dy = @s dep.descent_prev_y
scoreboard players operation @s dep.descent_dy -= @s dep.descent_y
scoreboard players set @s dep.descent_fall_seen 0
execute if predicate fallout_smp:legendary/the_descent_airborne if score @s dep.descent_dy matches 1.. run scoreboard players operation @s dep.descent_fall_seen = @s dep.descent_dy
execute if predicate fallout_smp:legendary/the_descent_airborne if score @s dep.descent_dy matches 1.. run scoreboard players operation @s dep.descent_fall_memory += @s dep.descent_dy
execute if predicate fallout_smp:legendary/the_descent_airborne if score @s dep.descent_fall_memory matches 1.. run scoreboard players set @s dep.descent_fall_timer 12
execute unless predicate fallout_smp:legendary/the_descent_airborne if score @s dep.descent_fall_timer matches 1.. run scoreboard players remove @s dep.descent_fall_timer 1
execute if score @s dep.descent_fall_timer matches 0 run scoreboard players set @s dep.descent_fall_memory 0
scoreboard players operation @s dep.descent_prev_y = @s dep.descent_y
scoreboard players add @s dep.pale_chain 1
execute if score @s dep.player_id matches 0 run function fallout_smp:legendary/pale_blade/assign_player_id
function fallout_smp:legendary/pale_blade/player_tick

scoreboard players operation @s dep.death_seen = @s dep.death
