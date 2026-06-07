#> fallout_smp:legendary/pale_blade/short_glow_tick

execute if score @s dep.pale_hit_glow matches 1.. run scoreboard players remove @s dep.pale_hit_glow 1
execute if score @s dep.pale_hit_glow matches 1.. run effect give @s minecraft:glowing 1 0 true
execute if score @s dep.pale_hit_glow matches ..0 run effect clear @s minecraft:glowing
execute if score @s dep.pale_hit_glow matches ..0 run tag @s remove dep_pale_short_glow
