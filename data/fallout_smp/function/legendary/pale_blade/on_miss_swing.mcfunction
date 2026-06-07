#> fallout_smp:legendary/pale_blade/on_miss_swing

tellraw @a[tag=convention.debug] {"text":"[Pale Blade] on_miss_swing","color":"white"}
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] miss_item_ok","color":"gray"}
execute unless items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] miss_item_fail","color":"red"}
execute if score @s dep.pale_cd matches 8.. run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] miss_cd_ready","color":"gray"}
execute unless score @s dep.pale_cd matches 8.. run tellraw @a[tag=convention.debug] {"text":"[Pale Blade] miss_cd_low","color":"red"}

execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] unless score @s dep.pale_pattern matches 0..3 run scoreboard players set @s dep.pale_pattern 0
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_chain matches 51.. run scoreboard players set @s dep.pale_pattern 0
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_cd matches 8.. run function fallout_smp:legendary/pale_blade/render_miss_slash
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_cd matches 8.. run function fallout_smp:legendary/pale_blade/apply_miss_sweep
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_cd matches 8.. run scoreboard players add @s dep.pale_pattern 1
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_pattern matches 4.. run scoreboard players set @s dep.pale_pattern 0
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_cd matches 8.. run scoreboard players set @s dep.pale_chain 0
execute if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"pale_blade"}}] if score @s dep.pale_cd matches 8.. run scoreboard players set @s dep.pale_cd 0
