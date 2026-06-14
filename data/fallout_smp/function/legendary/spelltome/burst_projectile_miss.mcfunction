#> fallout_smp:legendary/spelltome/burst_projectile_miss

function fallout_smp:legendary/spelltome/burst_projectile_spark
playsound minecraft:block.amethyst_block.chime master @a[distance=..24] ~ ~ ~ 0.6 1.65
function fallout_smp:legendary/spelltome/projectile_clear_owner
kill @s
