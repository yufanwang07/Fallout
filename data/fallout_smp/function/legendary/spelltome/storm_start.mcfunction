#> fallout_smp:legendary/spelltome/storm_start

tellraw @a[tag=convention.debug] {"text":"[Spellblade] storm_start","color":"yellow"}
scoreboard players set @s dep.tome_state 2
scoreboard players set @s dep.tome_storm_time 60
scoreboard players set @s dep.tome_storm_tick 0
scoreboard players set @s dep.tome_cd 0
playsound minecraft:item.trident.thunder master @a[distance=..32] ~ ~ ~ 0.6 1.65
playsound minecraft:block.beacon.ambient master @a[distance=..24] ~ ~ ~ 0.7 1.5
