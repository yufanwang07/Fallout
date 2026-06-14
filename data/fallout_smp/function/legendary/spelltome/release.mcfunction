#> fallout_smp:legendary/spelltome/release

execute unless score @s dep.tome_cd matches 60.. run tellraw @a[tag=convention.debug] {"text":"[Spellblade] cooldown_not_ready","color":"red"}
execute if score @s dep.tome_cd matches 60.. if score @s dep.tome_state matches 1.. run scoreboard players set @s dep.tome_state 0
execute if score @s dep.tome_cd matches 60.. if score @s dep.tome_state matches 2 run tellraw @a[tag=convention.debug] {"text":"[Spellblade] already_channeling","color":"red"}
execute if score @s dep.tome_cd matches 60.. if score @s dep.tome_state matches 0 if score @s dep.tome_sneak matches 1.. run function fallout_smp:legendary/spelltome/storm_start
execute if score @s dep.tome_cd matches 60.. if score @s dep.tome_state matches 0 unless score @s dep.tome_sneak matches 1.. run function fallout_smp:legendary/spelltome/burst_start
scoreboard players set @s dep.tome_using 0
