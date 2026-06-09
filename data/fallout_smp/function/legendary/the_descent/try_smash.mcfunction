#> fallout_smp:legendary/the_descent/try_smash

scoreboard players operation @s dep.descent_fall = @s dep.descent_fall_memory
execute if score @s dep.descent_fall_seen > @s dep.descent_fall run scoreboard players operation @s dep.descent_fall = @s dep.descent_fall_seen

tellraw @a[tag=convention.debug] [{"text":"[The Descent] try fall_x100=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_fall"}},{"text":" cd=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_cd"}}]
execute unless score @s dep.descent_cd matches 6.. run tellraw @a[tag=convention.debug] {"text":"[The Descent] cooldown_not_ready","color":"red"}
execute if score @s dep.descent_cd matches 6.. unless score @s dep.descent_fall matches 300.. run tellraw @a[tag=convention.debug] {"text":"[The Descent] fall_too_low","color":"red"}
execute if score @s dep.descent_cd matches 6.. if score @s dep.descent_fall matches 300.. run function fallout_smp:legendary/the_descent/prepare_smash
