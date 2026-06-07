#> fallout_smp:effects/tick

scoreboard players add @s dep.effect_tick 1
execute if score @s dep.effect_tick matches 1 at @s run playsound minecraft:block.end_portal_spawn master @a[distance=..96] ~ ~ ~ 0.9 1.25
execute if score @s dep.effect_tick matches 1 at @s run playsound minecraft:entity.ender_dragon.flap master @a[distance=..96] ~ ~ ~ 0.8 0.55

execute if score @s dep.effect_tick matches 1 at @s positioned ~ ~1 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 4 at @s positioned ~ ~1.5 ~ run function fallout_smp:effects/beamwave_inner

execute if score @s dep.effect_tick matches 7 at @s positioned ~ ~2 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 10 at @s positioned ~ ~2.7 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 13 at @s positioned ~ ~3.5 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 16 at @s positioned ~ ~5.0 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 18 at @s positioned ~ ~6.9 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 20 at @s positioned ~ ~9.2 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 23 at @s positioned ~ ~13 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 24 at @s positioned ~ ~18 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 28 at @s positioned ~ ~26 ~ run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 26 at @s positioned ~ ~49 ~ run function fallout_smp:effects/beamwave_inner
execute if score @s dep.effect_tick matches 32 at @s positioned ~ ~50 ~ run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 32 at @s positioned ~ ~40 ~ run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 32 at @s positioned ~ ~30 ~ run function fallout_smp:effects/beamwave



execute if score @s dep.effect_tick matches 32 at @s positioned ~ ~50 ~ run function fallout_smp:effects/beamwave_big
execute if score @s dep.effect_tick matches 32 at @s positioned ~ ~1.5 ~ run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 32 at @s positioned ~ ~15 ~ run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 30 at @s run function fallout_smp:effects/raycast_column
execute if score @s dep.effect_tick matches 30..36 at @s run function fallout_smp:effects/lower_column
execute if score @s dep.effect_tick matches 30..36 at @s run function fallout_smp:effects/raycast_column
execute if score @s dep.effect_tick matches 34 at @s run function fallout_smp:effects/lower_explosions
execute if score @s dep.effect_tick matches 32 at @s run function fallout_smp:effects/beamwave_big
execute if score @s dep.effect_tick matches 36 at @s run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 34 at @s run function fallout_smp:effects/impact

execute if score @s dep.effect_tick matches 34 at @s run function fallout_smp:effects/beamwave
execute if score @s dep.effect_tick matches 32 at @s run function fallout_smp:effects/impact
execute if score @s dep.effect_tick matches 50.. run kill @s
