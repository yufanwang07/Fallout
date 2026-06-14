#> fallout_smp:legendary/spelltome/player_tick

execute unless score @s dep.tome_cd matches 0.. run scoreboard players set @s dep.tome_cd 60
execute unless score @s dep.tome_state matches 0..2 run scoreboard players set @s dep.tome_state 0
execute unless score @s dep.tome_charge matches 0.. run scoreboard players set @s dep.tome_charge 0
execute unless score @s dep.tome_using matches 0.. run scoreboard players set @s dep.tome_using 0
execute unless score @s dep.tome_theme matches 1..5 run scoreboard players set @s dep.tome_theme 1
execute if score @s dep.tome_theme matches 2 run scoreboard players set @s dep.tome_theme 1
tag @s remove dep_tome_burst_charging
tag @s remove dep_tome_storming

scoreboard players add @s dep.tome_cd 1
execute if score @s dep.tome_cd matches 60.. run scoreboard players set @s dep.tome_cd 60

execute if score @s dep.tome_state matches 2 if score @s dep.tome_storm_time matches 1.. if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] run function fallout_smp:legendary/spelltome/storm_tick
execute if score @s dep.tome_state matches 2 if score @s dep.tome_storm_time matches 1.. run scoreboard players remove @s dep.tome_storm_time 1
execute if score @s dep.tome_state matches 2 if score @s dep.tome_storm_time matches 0 run scoreboard players set @s dep.tome_state 0
execute unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] run scoreboard players set @s dep.tome_state 0
execute unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] run scoreboard players set @s dep.tome_storm_time 0
execute unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] run scoreboard players set @s dep.tome_charge 0
execute unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] run scoreboard players set @s dep.tome_theme 1

execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] run function fallout_smp:legendary/spelltome/selected_tick
execute if score @s dep.tome_using matches 1.. run scoreboard players remove @s dep.tome_using 1
execute if score @s dep.tome_state matches 0 if score @s dep.tome_using matches 0 run scoreboard players set @s dep.tome_charge 0
execute if score @s dep.tome_state matches 0 if score @s dep.tome_using matches 0 run scoreboard players set @s dep.tome_theme 1
scoreboard players reset @s dep.tome_sneak
