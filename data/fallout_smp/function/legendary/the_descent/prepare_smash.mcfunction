#> fallout_smp:legendary/the_descent/prepare_smash

tag @e[tag=dep_descent_main] remove dep_descent_main
tag @s add dep_descent_attacker

execute at @s as @e[type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,tag=!dep_descent_attacker,distance=..6,sort=nearest,limit=1,nbt=!{HurtTime:0s}] run tag @s add dep_descent_main
execute unless entity @e[tag=dep_descent_main,limit=1] at @s as @e[type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,tag=!dep_descent_attacker,distance=..6,sort=nearest,limit=1] run tag @s add dep_descent_main

execute if entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] target_ok","color":"gray"}
execute unless entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] target_fail","color":"red"}
execute if entity @e[tag=dep_descent_main,limit=1] run function fallout_smp:legendary/the_descent/compute_damage
execute if entity @e[tag=dep_descent_main,limit=1] at @e[tag=dep_descent_main,limit=1] run function fallout_smp:legendary/the_descent/impact

scoreboard players set @s dep.descent_fall_memory 0
scoreboard players set @s dep.descent_fall_timer 0
tag @s remove dep_descent_attacker
tag @e[tag=dep_descent_main] remove dep_descent_main
