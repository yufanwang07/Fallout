#> fallout_smp:legendary/pale_blade/sweep_hit_point

particle minecraft:ominous_spawning ~ ~ ~ 0.024 0.024 0.024 0.004 3 force
execute if score @s dep.pale_stamp matches 0 positioned ~ ~-0.20 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 0 positioned ~ ~-0.20 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 0 positioned ~ ~-0.20 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 1 positioned ~ ~-0.25 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 1 positioned ~ ~-0.25 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 1 positioned ~ ~-0.25 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 2 positioned ~ ~-0.30 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 2 positioned ~ ~-0.30 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
execute if score @s dep.pale_stamp matches 2 positioned ~ ~-0.30 ~ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0 -0.055 0 1 0 force
particle minecraft:soul_fire_flame ~ ~ ~ 0.008 0.008 0.008 0 1 force
particle minecraft:electric_spark ~ ~ ~ 0.020 0.020 0.020 0.006 1 force
scoreboard players add @s dep.pale_stamp 1
execute if score @s dep.pale_stamp matches 3.. run scoreboard players set @s dep.pale_stamp 0
