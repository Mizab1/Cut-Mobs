#built using mc-build (https://github.com/mc-build/mc-build)

particle crit
scoreboard players remove @s raycast_distance 1
execute as @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] at @s run execute if entity @s[type=sheep] run function cut_mob:__generated__/execute/3
execute if block ~ ~ ~ #cut_mob:passable unless entity @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] positioned ^ ^ ^0.5 run function cut_mob:__generated__/execute/1