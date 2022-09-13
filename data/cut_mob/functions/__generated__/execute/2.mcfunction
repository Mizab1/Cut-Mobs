#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players remove @s raycast_distance 1
execute as @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] at @s run function cut_mob:__generated__/execute/3
execute if block ~ ~ ~ #cut_mob:passable unless entity @e[type=#cut_mob:is_cuttable, tag=!cut, distance=..1.5] positioned ^ ^ ^0.5 if score @s raycast_distance matches 1.. run function cut_mob:__generated__/execute/2