#> fallout_smp:legendary/pale_blade/render_sweep_hit

execute unless score @s dep.rand matches 0..5 run scoreboard players set @s dep.rand 0
scoreboard players operation @s dep.pale_stamp = @s dep.rand
execute if score @s dep.pale_stamp matches 3.. run scoreboard players remove @s dep.pale_stamp 3
execute if score @s dep.rand matches 0 run function fallout_smp:legendary/pale_blade/sweep_hit_line_0
execute if score @s dep.rand matches 1 run function fallout_smp:legendary/pale_blade/sweep_hit_line_1
execute if score @s dep.rand matches 2 run function fallout_smp:legendary/pale_blade/sweep_hit_line_2
execute if score @s dep.rand matches 3 run function fallout_smp:legendary/pale_blade/sweep_hit_line_3
execute if score @s dep.rand matches 4 run function fallout_smp:legendary/pale_blade/sweep_hit_line_4
execute if score @s dep.rand matches 5 run function fallout_smp:legendary/pale_blade/sweep_hit_line_5
scoreboard players add @s dep.rand 1
execute if score @s dep.rand matches 6.. run scoreboard players set @s dep.rand 0
