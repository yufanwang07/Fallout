#> fallout_smp:load

scoreboard objectives add dep.reform_timer dummy
scoreboard objectives add dep.boon_timer dummy
scoreboard objectives add dep.glow_timer dummy
scoreboard objectives add dep.warned dummy
scoreboard objectives add dep.death deathCount
scoreboard objectives add dep.death_seen dummy
scoreboard objectives add dep.effect_tick dummy
scoreboard objectives add dep.config dummy
scoreboard objectives add dep.pale_cd dummy
scoreboard objectives add dep.arc_step dummy
scoreboard objectives add dep.rand dummy
scoreboard objectives add dep.pale_pattern dummy
scoreboard objectives add dep.pale_chain dummy
scoreboard objectives add dep.player_id dummy
scoreboard objectives add dep.owner_id dummy
scoreboard objectives add dep.pale_seen dummy
scoreboard objectives add dep.pale_stamp dummy
scoreboard objectives add dep.sweep_lvl dummy
scoreboard objectives add dep.sharp_lvl dummy
scoreboard objectives add dep.sweep_damage dummy
scoreboard objectives add dep.pale_hit_glow dummy

scoreboard players set #dep.total_time dep.config 12000
scoreboard players set #dep.warn_time dep.config 300
scoreboard players set #dep.impact_time dep.config 32
scoreboard players set #dep.boon_time dep.config 6000
scoreboard players set #dep.next_id dep.player_id 1

team add dep_dragon_purple
team modify dep_dragon_purple color dark_purple

tellraw @a[tag=convention.debug] {"text":"[Loaded Fallout]","color":"dark_purple"}
