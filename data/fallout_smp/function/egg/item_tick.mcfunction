#> fallout_smp:egg/item_tick

execute as @e[type=item,nbt={Item:{id:"minecraft:dragon_egg"}},tag=!dep_ignore_egg_power] at @s on origin at @s if entity @s[type=player] run function fallout_smp:egg/consume
execute as @e[type=item,nbt={Item:{id:"minecraft:dragon_egg"}}] run function fallout_smp:egg/mark_item
