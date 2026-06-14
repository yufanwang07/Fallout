#> fallout_smp:legendary/spelltome/projectile_mark_owner

tag @a remove dep_tome_projectile_owner
scoreboard players operation #dep.current dep.owner_id = @s dep.owner_id
execute as @a if score @s dep.player_id = #dep.current dep.owner_id run tag @s add dep_tome_projectile_owner
