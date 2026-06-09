#> fallout_smp:legendary/the_descent/compute_damage

scoreboard players operation @s dep.descent_extra = @s dep.descent_fall

scoreboard players operation @s dep.descent_aoe = @s dep.descent_extra
execute if score @s dep.descent_extra matches 500.. run scoreboard players add @s dep.descent_aoe 200
execute if score @s dep.descent_aoe matches 2001.. run scoreboard players set @s dep.descent_aoe 2000

scoreboard players operation @s dep.descent_main = @s dep.descent_extra
scoreboard players remove @s dep.descent_main 300
execute if score @s dep.descent_main matches ..0 run scoreboard players set @s dep.descent_main 0
execute if score @s dep.descent_main matches 1001.. run scoreboard players set @s dep.descent_main 1000

data modify storage fallout_smp:main descent.type set value "fallout_smp:descent"
tellraw @a[tag=convention.debug] [{"text":"[The Descent] damage_x100 aoe=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_aoe"}},{"text":" main=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_main"}}]
