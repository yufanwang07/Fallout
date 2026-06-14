#> fallout_smp:legendary/spelltome/burst_start

tellraw @a[tag=convention.debug] {"text":"[Spellblade] burst_charge","color":"gold"}
scoreboard players set @s dep.tome_state 0
scoreboard players set @s dep.tome_cd 0
playsound minecraft:block.enchantment_table.use master @a[distance=..24] ~ ~ ~ 0.9 1.55
execute if score @s dep.tome_charge matches 60.. at @s run function fallout_smp:legendary/spelltome/burst_shockwave_max
execute anchored eyes positioned ^ ^ ^2.45 run function fallout_smp:legendary/spelltome/burst_muzzle_ring
execute anchored eyes positioned ^ ^ ^2.55 run function fallout_smp:legendary/spelltome/projectile_trail_cloud
execute anchored eyes positioned ^ ^ ^2.65 run summon area_effect_cloud ^ ^ ^ {Duration:100,WaitTime:0,Radius:0f,Tags:["dep_tome_burst_projectile","dep_tome_burst_new"],CustomName:'{"text":"dep_tome_burst"}',Silent:1b,NoGravity:1b}
function fallout_smp:legendary/spelltome/burst_projectile_setup
