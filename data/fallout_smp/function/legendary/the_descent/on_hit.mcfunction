#> fallout_smp:legendary/the_descent/on_hit

tellraw @a[tag=convention.debug] {"text":"[The Descent] on_hit","color":"dark_gray"}
advancement revoke @s only fallout_smp:legendary/the_descent_hit

execute if entity @s[tag=dep_descent_attacker] run tellraw @a[tag=convention.debug] {"text":"[The Descent] internal_skip","color":"dark_red"}
execute unless entity @s[tag=dep_descent_attacker] if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"the_descent"}}] run tellraw @a[tag=convention.debug] {"text":"[The Descent] item_ok","color":"gray"}
execute unless entity @s[tag=dep_descent_attacker] unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"the_descent"}}] run tellraw @a[tag=convention.debug] {"text":"[The Descent] item_fail","color":"red"}
execute unless entity @s[tag=dep_descent_attacker] if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"the_descent"}}] run function fallout_smp:legendary/the_descent/try_smash
