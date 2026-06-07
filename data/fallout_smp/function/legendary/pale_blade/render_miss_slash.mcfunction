#> fallout_smp:legendary/pale_blade/render_miss_slash

tellraw @a[tag=convention.debug] {"text":"[Pale Blade] miss_slash","color":"white"}

execute if score @s dep.pale_pattern matches 0 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_0","color":"gray"}
execute if score @s dep.pale_pattern matches 1 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_1","color":"gray"}
execute if score @s dep.pale_pattern matches 2 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_2","color":"gray"}
execute if score @s dep.pale_pattern matches 3 run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] pattern_3","color":"gray"}

execute if score @s dep.pale_pattern matches 0 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_0
execute if score @s dep.pale_pattern matches 1 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_1
execute if score @s dep.pale_pattern matches 2 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_2
execute if score @s dep.pale_pattern matches 3 rotated ~ 0 run function fallout_smp:legendary/pale_blade/pattern_3
