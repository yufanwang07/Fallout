#> fallout_smp:effects/impact

particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 force
particle minecraft:explosion_emitter ~ ~0.2 ~ 0 0 0 0 1 force
function fallout_smp:effects/meteor_shower_1
function fallout_smp:effects/meteor_shower_2
function fallout_smp:effects/meteor_shower_3
function fallout_smp:effects/explosion_particles
particle minecraft:end_rod ~ ~1.2 ~ 3 0.35 3 0.08 90 force
particle minecraft:cloud ~ ~0.8 ~ 3.5 0.25 3.5 0 80 force
particle minecraft:large_smoke ~ ~0.6 ~ 3 0.25 3 0.03 70 force
particle minecraft:dragon_breath ~ ~0.5 ~ 2.6 0.4 2.6 0.08 110 force
particle minecraft:reverse_portal ~ ~1 ~ 2 0.6 2 0.09 90 force
playsound minecraft:entity.generic.explode master @a[distance=..64] ~ ~ ~ 1.2 0.6
playsound minecraft:entity.ender_dragon.hurt master @a[distance=..96] ~ ~ ~ 0.9 0.45

function fallout_smp:effects/beamwave_big

effect give @a[distance=..8,gamemode=!spectator,tag=!dep_dragon_user] minecraft:darkness 5 2 false
effect give @a[distance=..8,gamemode=!spectator,tag=!dep_dragon_user] minecraft:mining_fatigue 5 0 false
effect give @a[distance=..8,gamemode=!spectator,tag=!dep_dragon_user] minecraft:slowness 5 1 false
effect give @a[distance=..8,gamemode=!spectator,tag=!dep_dragon_user] minecraft:weakness 10 0 false

execute as @a[distance=8.1..52,gamemode=!spectator,tag=!dep_dragon_user] at @s run function fallout_smp:effects/far_strike
