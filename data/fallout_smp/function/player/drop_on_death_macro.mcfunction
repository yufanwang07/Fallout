#> fallout_smp:player/drop_on_death_macro

$execute in $(dimension) positioned $(x) $(y) $(z) run loot spawn ~ ~ ~ loot fallout_smp:items/dragon_egg
$execute in $(dimension) positioned $(x) $(y) $(z) as @e[type=item,nbt={Item:{id:"minecraft:dragon_egg"}},distance=..1,sort=nearest,limit=1] run tag @s add dep_ignore_egg_power
