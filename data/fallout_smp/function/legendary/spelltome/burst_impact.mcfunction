#> fallout_smp:legendary/spelltome/burst_impact

function fallout_smp:legendary/spelltome/theme_impact
execute if score @s dep.tome_charge matches 40..59 positioned ~ ~0.15 ~ run function fallout_smp:legendary/spelltome/theme_shockwave_ring_inner
execute if score @s dep.tome_charge matches 60.. positioned ~ ~0.15 ~ run function fallout_smp:legendary/spelltome/theme_shockwave_ring_inner
execute if score @s dep.tome_charge matches 60.. positioned ~ ~0.15 ~ run function fallout_smp:legendary/spelltome/theme_shockwave_ring_middle
playsound minecraft:block.amethyst_cluster.break master @a[distance=..24] ~ ~ ~ 2.2 1.05
playsound minecraft:entity.firework_rocket.blast master @a[distance=..24] ~ ~ ~ 0.7 1.35
