#> fallout_smp:legendary/pale_blade/try_slash

tellraw @a[tag=convention.debug] {"text":"[Pale Blade] try_slash","color":"white"}

tag @e[tag=dep_pale_target] remove dep_pale_target
execute if entity @e[tag=dep_pale_real_hit,limit=1] as @e[tag=dep_pale_real_hit,limit=1] run tag @s add dep_pale_target
execute unless entity @e[tag=dep_pale_target,limit=1] at @s as @e[type=!minecraft:player,type=!minecraft:item,type=!minecraft:experience_orb,type=!minecraft:marker,type=!minecraft:interaction,distance=..4.5,sort=nearest,limit=1,nbt={HurtTime:10s}] run tag @s add dep_pale_target

execute if score @s dep.pale_pattern matches 0 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_0","color":"gray"}
execute if score @s dep.pale_pattern matches 1 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_1","color":"gray"}
execute if score @s dep.pale_pattern matches 2 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_2","color":"gray"}
execute if score @s dep.pale_pattern matches 3 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_3","color":"gray"}

execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 0 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_0
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 1 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_1
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 2 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_2
execute if entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 3 at @s anchored eyes positioned ^ ^-0.16 ^1.08 facing entity @e[tag=dep_pale_target,sort=nearest,limit=1] eyes rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_3
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 0 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_0
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 1 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_1
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 2 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_2
execute unless entity @e[tag=dep_pale_target,limit=1] if score @s dep.pale_pattern matches 3 at @s anchored eyes positioned ^ ^-0.16 ^1.08 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_3

tag @e[tag=dep_pale_target] remove dep_pale_target
