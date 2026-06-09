#> fallout_smp:legendary/the_descent/compute_damage

scoreboard players operation @s dep.descent_extra = @s dep.descent_fall

scoreboard players operation @s dep.descent_aoe = @s dep.descent_extra
scoreboard players operation @s dep.descent_aoe *= #dep.3 dep.config
scoreboard players operation @s dep.descent_aoe /= #dep.2 dep.config
execute if score @s dep.descent_aoe matches 1001.. run scoreboard players set @s dep.descent_aoe 1000

execute if score @s dep.descent_cd_used matches ..11 run scoreboard players operation @s dep.descent_aoe *= @s dep.descent_cd_used
execute if score @s dep.descent_cd_used matches ..11 run scoreboard players operation @s dep.descent_aoe /= #dep.12 dep.config

scoreboard players operation @s dep.descent_main = @s dep.descent_aoe

data modify storage fallout_smp:main descent.type set value "minecraft:mace_smash"
tellraw @a[tag=convention.debug] [{"text":"[The Descent] damage_x100 cd=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_cd_used"}},{"text":" aoe=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_aoe"}},{"text":" main=","color":"gray"},{"score":{"name":"@s","objective":"dep.descent_main"}}]
