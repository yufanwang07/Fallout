#> fallout_smp:legendary/the_descent/impact

tellraw @a[tag=convention.debug] {"text":"[The Descent] impact","color":"dark_gray"}
function fallout_smp:legendary/the_descent/render_impact

tag @e[tag=dep_descent_aoe_target] remove dep_descent_aoe_target
execute if score @s dep.descent_aoe matches 1.. as @e[type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,tag=!dep_descent_attacker,distance=..5.5] run tag @s add dep_descent_aoe_target

execute if score @s dep.descent_aoe matches 1.. if entity @e[tag=dep_descent_aoe_target,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] aoe_targets","color":"gray"}
execute if score @s dep.descent_aoe matches 1.. unless entity @e[tag=dep_descent_aoe_target,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] aoe_no_targets","color":"red"}
execute if score @s dep.descent_main matches 1.. if entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] main_target_ready","color":"gray"}
execute if score @s dep.descent_main matches 1.. unless entity @e[tag=dep_descent_main,limit=1] run tellraw @a[tag=convention.debug] {"text":"[The Descent] main_target_missing","color":"red"}

execute if score @s dep.descent_aoe matches 1.. as @e[tag=dep_descent_aoe_target] run function fallout_smp:legendary/the_descent/damage_aoe
execute if score @s dep.descent_main matches 1.. as @e[tag=dep_descent_main,limit=1] run function fallout_smp:legendary/the_descent/damage_main

execute unless entity @s[tag=dep_descent_rebounded] unless entity @s[tag=dep_descent_rebound_lock] run tellraw @a[tag=convention.debug] {"text":"[The Descent] rebound_fallback","color":"dark_gray"}
execute unless entity @s[tag=dep_descent_rebounded] unless entity @s[tag=dep_descent_rebound_lock] run function fallout_smp:legendary/the_descent/launch_attacker_fallback

tag @e[tag=dep_descent_aoe_target] remove dep_descent_aoe_target
