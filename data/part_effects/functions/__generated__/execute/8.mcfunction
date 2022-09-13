#built using mc-build (https://github.com/mc-build/mc-build)

particle poof ~ ~0.6 ~
scoreboard players remove @s spit_distance 1
execute as @e[type=#part_effects:undead, distance=..1.5] run effect give @s instant_health 1 0 true
execute as @e[type=!#part_effects:undead, distance=..1.5] run effect give @s instant_damage 1 0 true
execute if block ~ ~ ~ #cut_mob:passable unless entity @e[distance=..1.5] positioned ^ ^ ^1 if score @s spit_distance matches 1.. run function part_effects:__generated__/execute/8