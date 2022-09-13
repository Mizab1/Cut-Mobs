#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set @s right_clicked 0
scoreboard players set @s raycast_distance 40
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ #cut_mob:passable run function cut_mob:__generated__/execute/2