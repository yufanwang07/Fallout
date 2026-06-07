#> fallout_smp:legendary/pale_blade/delayed_spark_tick

scoreboard players remove @s dep.arc_step 1
execute if score @s dep.arc_step matches 0 run function fallout_smp:legendary/pale_blade/delayed_spark_emit
