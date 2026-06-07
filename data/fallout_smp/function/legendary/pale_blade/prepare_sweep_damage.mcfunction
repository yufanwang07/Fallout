#> fallout_smp:legendary/pale_blade/prepare_sweep_damage

scoreboard players set @s dep.sweep_lvl 0
execute store result score @s dep.sweep_lvl run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sweeping_edge" 1
execute if score @s dep.sweep_lvl matches 0 store result score @s dep.sweep_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sweeping_edge" 1
scoreboard players set @s dep.sharp_lvl 0
execute store result score @s dep.sharp_lvl run data get entity @s SelectedItem.components."minecraft:enchantments".levels."minecraft:sharpness" 1
execute if score @s dep.sharp_lvl matches 0 store result score @s dep.sharp_lvl run data get entity @s SelectedItem.components."minecraft:enchantments"."minecraft:sharpness" 1
scoreboard players set @s dep.sweep_damage 0
