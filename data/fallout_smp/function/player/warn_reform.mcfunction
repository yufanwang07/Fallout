#> fallout_smp:player/warn_reform

title @s title {"text":"Dragon Egg Reforming...","color":"dark_purple"}
title @s subtitle {"text":"Make sure you have inventory space!","color":"green"}
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.8
scoreboard players set @s dep.warned 1
