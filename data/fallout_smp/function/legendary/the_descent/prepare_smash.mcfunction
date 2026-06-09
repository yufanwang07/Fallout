#> fallout_smp:legendary/the_descent/prepare_smash

scoreboard players operation @s dep.descent_cd_used = @s dep.descent_cd
scoreboard players set @s dep.descent_cd 0
tag @e[tag=dep_descent_main] remove dep_descent_main
tag @s remove dep_descent_rebounded
tag @s add dep_descent_attacker

execute at @s as @e[type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,tag=!dep_descent_attacker,distance=..6,sort=nearest,limit=1,nbt=!{HurtTime:0s}] run tag @s add dep_descent_main
execute unless entity @e[tag=dep_descent_main,limit=1] at @s as @e[type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,tag=!dep_descent_attacker,distance=..6,sort=nearest,limit=1] run tag @s add dep_descent_main

execute if entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] target_ok","color":"gray"}
execute unless entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] target_fail","color":"red"}
execute unless entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] killed_target_fallback","color":"dark_gray"}
execute unless entity @e[tag=dep_descent_main,limit=1] at @s run function fallout_smp:legendary/the_descent/render_impact
execute unless entity @e[tag=dep_descent_main,limit=1] unless entity @s[tag=dep_descent_rebound_lock] run function fallout_smp:legendary/the_descent/launch_attacker_fallback
execute if entity @e[tag=dep_descent_main,limit=1] run function fallout_smp:legendary/the_descent/compute_damage
execute if entity @e[tag=dep_descent_main,limit=1] at @e[tag=dep_descent_main,limit=1] run function fallout_smp:legendary/the_descent/impact

scoreboard players set @s dep.descent_fall_memory 0
scoreboard players set @s dep.descent_fall_timer 0
tag @s remove dep_descent_attacker
tag @s remove dep_descent_rebounded
tag @e[tag=dep_descent_main] remove dep_descent_main
