#> fallout_smp:egg/consume
# Runs as the player who dropped the egg, at the player.

kill @e[type=item,nbt={Item:{id:"minecraft:dragon_egg"}},distance=..4,sort=nearest,limit=1]
summon marker ~ ~-1 ~ {Tags:["dep_dragon_egg_effect"]}

tag @s add dep_dragon_user
scoreboard players operation @s dep.reform_timer = #dep.total_time dep.config
scoreboard players operation @s dep.boon_timer = #dep.impact_time dep.config
scoreboard players operation @s dep.glow_timer = #dep.boon_time dep.config
scoreboard players set @s dep.warned 0
team join dep_dragon_purple @s

tellraw @s [{"text":"The dragon's power answers you. ","color":"dark_purple"},{"text":"You will regain the Dragon Egg in 10 minutes if you remain alive and online.","color":"gray"}]
playsound minecraft:entity.ender_dragon.growl master @a[distance=..64] ~ ~ ~ 1 0.7
