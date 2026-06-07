#> fallout_smp:tick

function fallout_smp:egg/item_tick
execute as @e[type=marker,tag=dep_dragon_egg_effect] at @s run function fallout_smp:effects/tick
execute as @e[type=marker,tag=dep_pale_spark] at @s run function fallout_smp:legendary/pale_blade/delayed_spark_tick
execute as @e[type=interaction,tag=dep_pale_sensor] at @s run function fallout_smp:legendary/pale_blade/sensor_tick
execute as @e[tag=dep_pale_short_glow] at @s run function fallout_smp:legendary/pale_blade/short_glow_tick
execute as @e[scores={dep.pale_seen=1..},nbt={HurtTime:0s}] run scoreboard players set @s dep.pale_seen 0
execute as @a run function fallout_smp:player/tick
