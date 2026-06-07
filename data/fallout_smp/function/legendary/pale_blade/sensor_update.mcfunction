#> fallout_smp:legendary/pale_blade/sensor_update

tellraw @a[tag=convention.debug] {"text":"[Pale Blade] sensor_update","color":"gray"}

execute at @s anchored eyes positioned ^-1.20 ^0.22 ^3.30 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_0,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_0,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_0,limit=1] anchored eyes positioned ^-1.20 ^0.22 ^3.30 run function fallout_smp:legendary/pale_blade/sensor_spawn_0

execute at @s anchored eyes positioned ^-0.72 ^0.28 ^3.42 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_1,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_1,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_1,limit=1] anchored eyes positioned ^-0.72 ^0.28 ^3.42 run function fallout_smp:legendary/pale_blade/sensor_spawn_1

execute at @s anchored eyes positioned ^-0.24 ^0.32 ^3.50 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_2,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_2,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_2,limit=1] anchored eyes positioned ^-0.24 ^0.32 ^3.50 run function fallout_smp:legendary/pale_blade/sensor_spawn_2

execute at @s anchored eyes positioned ^0.24 ^0.32 ^3.50 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_3,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_3,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_3,limit=1] anchored eyes positioned ^0.24 ^0.32 ^3.50 run function fallout_smp:legendary/pale_blade/sensor_spawn_3

execute at @s anchored eyes positioned ^0.72 ^0.28 ^3.42 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_4,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_4,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_4,limit=1] anchored eyes positioned ^0.72 ^0.28 ^3.42 run function fallout_smp:legendary/pale_blade/sensor_spawn_4

execute at @s anchored eyes positioned ^1.20 ^0.22 ^3.30 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_5,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_5,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_5,limit=1] anchored eyes positioned ^1.20 ^0.22 ^3.30 run function fallout_smp:legendary/pale_blade/sensor_spawn_5

execute at @s anchored eyes positioned ^-1.20 ^-0.10 ^3.34 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_6,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_6,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_6,limit=1] anchored eyes positioned ^-1.20 ^-0.10 ^3.34 run function fallout_smp:legendary/pale_blade/sensor_spawn_6

execute at @s anchored eyes positioned ^-0.72 ^-0.04 ^3.46 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_7,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_7,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_7,limit=1] anchored eyes positioned ^-0.72 ^-0.04 ^3.46 run function fallout_smp:legendary/pale_blade/sensor_spawn_7

execute at @s anchored eyes positioned ^-0.24 ^0.02 ^3.54 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_8,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_8,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_8,limit=1] anchored eyes positioned ^-0.24 ^0.02 ^3.54 run function fallout_smp:legendary/pale_blade/sensor_spawn_8

execute at @s anchored eyes positioned ^0.24 ^0.02 ^3.54 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_9,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_9,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_9,limit=1] anchored eyes positioned ^0.24 ^0.02 ^3.54 run function fallout_smp:legendary/pale_blade/sensor_spawn_9

execute at @s anchored eyes positioned ^0.72 ^-0.04 ^3.46 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_10,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_10,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_10,limit=1] anchored eyes positioned ^0.72 ^-0.04 ^3.46 run function fallout_smp:legendary/pale_blade/sensor_spawn_10

execute at @s anchored eyes positioned ^1.20 ^-0.10 ^3.34 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_11,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_11,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_11,limit=1] anchored eyes positioned ^1.20 ^-0.10 ^3.34 run function fallout_smp:legendary/pale_blade/sensor_spawn_11

execute at @s anchored eyes positioned ^-1.20 ^-0.46 ^3.26 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_12,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_12,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_12,limit=1] anchored eyes positioned ^-1.20 ^-0.46 ^3.26 run function fallout_smp:legendary/pale_blade/sensor_spawn_12

execute at @s anchored eyes positioned ^-0.72 ^-0.38 ^3.38 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_13,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_13,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_13,limit=1] anchored eyes positioned ^-0.72 ^-0.38 ^3.38 run function fallout_smp:legendary/pale_blade/sensor_spawn_13

execute at @s anchored eyes positioned ^-0.24 ^-0.32 ^3.46 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_14,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_14,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_14,limit=1] anchored eyes positioned ^-0.24 ^-0.32 ^3.46 run function fallout_smp:legendary/pale_blade/sensor_spawn_14

execute at @s anchored eyes positioned ^0.24 ^-0.32 ^3.46 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_15,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_15,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_15,limit=1] anchored eyes positioned ^0.24 ^-0.32 ^3.46 run function fallout_smp:legendary/pale_blade/sensor_spawn_15

execute at @s anchored eyes positioned ^0.72 ^-0.38 ^3.38 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_16,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_16,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_16,limit=1] anchored eyes positioned ^0.72 ^-0.38 ^3.38 run function fallout_smp:legendary/pale_blade/sensor_spawn_16

execute at @s anchored eyes positioned ^1.20 ^-0.46 ^3.26 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_17,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_17,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_17,limit=1] anchored eyes positioned ^1.20 ^-0.46 ^3.26 run function fallout_smp:legendary/pale_blade/sensor_spawn_17

execute at @s anchored eyes positioned ^0 ^-0.72 ^3.38 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_18,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_18,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_18,limit=1] anchored eyes positioned ^0 ^-0.72 ^3.38 run function fallout_smp:legendary/pale_blade/sensor_spawn_18

execute at @s anchored eyes positioned ^0 ^0.56 ^3.32 as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_19,limit=1] run tp @s ~ ~ ~
execute as @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_19,limit=1] run data merge entity @s {width:0.68f,height:0.68f,response:0b}
execute at @s unless entity @e[type=interaction,tag=dep_pale_sensor_match,tag=dep_pale_sensor_19,limit=1] anchored eyes positioned ^0 ^0.56 ^3.32 run function fallout_smp:legendary/pale_blade/sensor_spawn_19
