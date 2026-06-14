#> fallout_smp:legendary/spelltome/choose_theme

execute store result score #dep.tome_theme_roll dep.rand run random value 1..4
execute if score #dep.tome_theme_roll dep.rand matches 1 run scoreboard players set @s dep.tome_theme 1
execute if score #dep.tome_theme_roll dep.rand matches 2 run scoreboard players set @s dep.tome_theme 3
execute if score #dep.tome_theme_roll dep.rand matches 3 run scoreboard players set @s dep.tome_theme 4
execute if score #dep.tome_theme_roll dep.rand matches 4 run scoreboard players set @s dep.tome_theme 5
tellraw @a[tag=convention.debug] [{"text":"[Spellblade] theme ","color":"gray"},{"score":{"name":"@s","objective":"dep.tome_theme"},"color":"gold"}]
