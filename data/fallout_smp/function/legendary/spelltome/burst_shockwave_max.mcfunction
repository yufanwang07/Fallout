#> fallout_smp:legendary/spelltome/burst_shockwave_max

playsound minecraft:block.conduit.activate master @a[distance=..32] ~ ~ ~ 1.4 0.85
particle minecraft:flash{color:2147483647} ~ ~1 ~ 0 0 0 0 1 force @a
execute positioned ~ ~1 ~ run function fallout_smp:legendary/spelltome/theme_detection_cloud
execute positioned ~ ~0.3 ~ run function fallout_smp:legendary/spelltome/theme_shockwave_ring_inner
execute positioned ~ ~0.3 ~ run function fallout_smp:legendary/spelltome/theme_shockwave_ring_middle
