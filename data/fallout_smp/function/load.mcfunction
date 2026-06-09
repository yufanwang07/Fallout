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
scoreboard objectives add dep.descent_cd dummy
scoreboard objectives add dep.descent_fall dummy
scoreboard objectives add dep.descent_fall_seen dummy
scoreboard objectives add dep.descent_fall_memory dummy
scoreboard objectives add dep.descent_fall_timer dummy
scoreboard objectives add dep.descent_y dummy
scoreboard objectives add dep.descent_prev_y dummy
scoreboard objectives add dep.descent_dy dummy
scoreboard objectives add dep.descent_extra dummy
scoreboard objectives add dep.descent_aoe dummy
scoreboard objectives add dep.descent_main dummy
scoreboard objectives add dep.descent_rebound_y dummy
scoreboard objectives add dep.descent_vision_timer dummy
scoreboard objectives add dep.descent_dark_timer dummy
scoreboard objectives add dep.descent_resist_timer dummy

scoreboard players set #dep.total_time dep.config 12000
scoreboard players set #dep.warn_time dep.config 300
scoreboard players set #dep.impact_time dep.config 32
scoreboard players set #dep.boon_time dep.config 6000
scoreboard players set #dep.next_id dep.player_id 1
scoreboard players set #dep.100 dep.config 100
scoreboard players set #dep.3 dep.config 3
scoreboard players set #dep.4 dep.config 4

team add dep_dragon_purple
team modify dep_dragon_purple color dark_purple

tellraw @a[tag=convention.debug] {"text":"[Loaded Fallout]","color":"dark_purple"}
