#> fallout_smp:legendary/the_descent/damage_main

tellraw @a[tag=convention.debug] {"text":"[The Descent] main_enter","color":"dark_gray"}
execute store result score @s dep.descent_hp_before run data get entity @s Health 10
function fallout_smp:legendary/the_descent/damage_main_apply with storage fallout_smp:main descent
execute as @a[tag=dep_descent_attacker,sort=nearest,limit=1] unless entity @s[tag=dep_descent_rebounded] unless entity @s[tag=dep_descent_rebound_lock] run function fallout_smp:legendary/the_descent/launch_attacker
execute store result score @s dep.descent_hp_after run data get entity @s Health 10
tellraw @a[tag=convention.debug] [{"text":"[The Descent] main_health ","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_hp_before"}},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_hp_after"}}]
