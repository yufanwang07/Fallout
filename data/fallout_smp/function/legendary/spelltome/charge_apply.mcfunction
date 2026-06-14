#> fallout_smp:legendary/spelltome/charge_apply

scoreboard players set @s dep.tome_using 3
execute if score @s dep.tome_charge matches 0 run function fallout_smp:legendary/spelltome/choose_theme
execute if score @s dep.tome_charge matches 0 run playsound minecraft:block.note_block.pling master @a[distance=..24] ~ ~ ~ 0.6 0.7
execute if score @s dep.tome_charge matches 0 run function fallout_smp:legendary/spelltome/charge_visuals
execute if score @s dep.tome_charge matches ..79 run scoreboard players add @s dep.tome_charge 1
execute if score @s dep.tome_charge matches 80.. run scoreboard players set @s dep.tome_charge 80
execute if score @s dep.tome_charge matches 20 run playsound minecraft:block.note_block.pling master @a[distance=..24] ~ ~ ~ 0.75 0.95
execute if score @s dep.tome_charge matches 20 run function fallout_smp:legendary/spelltome/charge_visuals
execute if score @s dep.tome_charge matches 40 run playsound minecraft:block.note_block.pling master @a[distance=..24] ~ ~ ~ 0.9 1.2
execute if score @s dep.tome_charge matches 40 run function fallout_smp:legendary/spelltome/charge_visuals
execute if score @s dep.tome_charge matches 60 run playsound minecraft:block.note_block.pling master @a[distance=..24] ~ ~ ~ 1.0 1.55
execute if score @s dep.tome_charge matches 60 run playsound minecraft:block.conduit.activate master @a[distance=..32] ~ ~ ~ 1.8 1.0
execute if score @s dep.tome_charge matches 60 run function fallout_smp:legendary/spelltome/charge_visuals
