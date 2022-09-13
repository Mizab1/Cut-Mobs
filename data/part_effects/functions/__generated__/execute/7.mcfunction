#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set @s right_clicked 0
scoreboard players set @s spit_distance 8
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable run function part_effects:__generated__/execute/8