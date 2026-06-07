#> fallout_smp:legendary/pale_blade/assign_player_id

scoreboard players operation @s dep.player_id = #dep.next_id dep.player_id
scoreboard players add #dep.next_id dep.player_id 1
