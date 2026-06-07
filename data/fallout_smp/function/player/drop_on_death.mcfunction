#> fallout_smp:player/drop_on_death

data modify storage fallout_smp:main death_pos set value {dimension:"minecraft:overworld",x:0,y:0,z:0}
data modify storage fallout_smp:main death_pos.dimension set from entity @s LastDeathLocation.dimension
data modify storage fallout_smp:main death_pos.x set from entity @s LastDeathLocation.pos[0]
data modify storage fallout_smp:main death_pos.y set from entity @s LastDeathLocation.pos[1]
data modify storage fallout_smp:main death_pos.z set from entity @s LastDeathLocation.pos[2]
function fallout_smp:player/drop_on_death_macro with storage fallout_smp:main death_pos
