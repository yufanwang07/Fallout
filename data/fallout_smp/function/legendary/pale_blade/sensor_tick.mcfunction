#> fallout_smp:legendary/pale_blade/sensor_tick

execute if data entity @s attack on attacker run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] sensor_hit","color":"gray"}
execute if data entity @s attack on attacker at @s run function fallout_smp:legendary/pale_blade/trigger_miss_swing
execute if data entity @s attack run data remove entity @s attack
