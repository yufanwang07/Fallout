#> fallout_smp:player/death_check

execute if score @s dep.reform_timer matches 1.. run function fallout_smp:player/drop_on_death
execute if score @s dep.glow_timer matches 1.. run team leave @s
scoreboard players set @s dep.reform_timer 0
scoreboard players set @s dep.boon_timer 0
scoreboard players set @s dep.glow_timer 0
scoreboard players set @s dep.warned 0
tag @s remove dep_dragon_user
scoreboard players operation @s dep.death_seen = @s dep.death
