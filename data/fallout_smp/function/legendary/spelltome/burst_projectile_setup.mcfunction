#> fallout_smp:legendary/spelltome/burst_projectile_setup

scoreboard players operation @e[type=area_effect_cloud,tag=dep_tome_burst_new,sort=nearest,limit=1] dep.owner_id = @s dep.player_id
scoreboard players operation @e[type=area_effect_cloud,tag=dep_tome_burst_new,sort=nearest,limit=1] dep.tome_charge = @s dep.tome_charge
scoreboard players operation @e[type=area_effect_cloud,tag=dep_tome_burst_new,sort=nearest,limit=1] dep.tome_theme = @s dep.tome_theme
tag @e[type=area_effect_cloud,tag=dep_tome_burst_new,sort=nearest,limit=1] remove dep_tome_burst_new
