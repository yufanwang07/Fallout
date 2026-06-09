#> fallout_smp:legendary/the_descent/damage_aoe

tellraw @a[tag=convention.debug] {"text":"[The Descent] aoe_enter","color":"dark_gray"}
execute store result score @s dep.descent_hp_before run data get entity @s Health 10
function fallout_smp:legendary/the_descent/damage_aoe_apply with storage fallout_smp:main descent
execute store result score @s dep.descent_hp_after run data get entity @s Health 10
tellraw @a[tag=convention.debug] [{"text":"[The Descent] aoe_health ","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_hp_before"}},{"text":" -> ","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_hp_after"}}]
