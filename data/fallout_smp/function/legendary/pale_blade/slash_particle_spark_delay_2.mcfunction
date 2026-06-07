#> fallout_smp:legendary/pale_blade/slash_particle_spark_delay_2

function fallout_smp:legendary/pale_blade/slash_particle
summon marker ~ ~ ~ {Tags:["dep_pale_spark","dep_pale_spark_new"]}
scoreboard players set @e[type=marker,tag=dep_pale_spark_new,sort=nearest,limit=1,distance=..0.01] dep.arc_step 2
tag @e[type=marker,tag=dep_pale_spark_new,sort=nearest,limit=1,distance=..0.01] remove dep_pale_spark_new
