#> fallout_smp:legendary/spelltome/charge_tick

advancement revoke @s only fallout_smp:legendary/spelltome_using
execute at @s if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{fallout_smp:{legendary_weapon:"spellblade"}}] if score @s dep.tome_cd matches 60.. if score @s dep.tome_state matches 0 run function fallout_smp:legendary/spelltome/charge_apply
