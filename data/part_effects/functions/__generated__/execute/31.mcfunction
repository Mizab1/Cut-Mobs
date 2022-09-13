#built using mc-build (https://github.com/mc-build/mc-build)

execute store result score @s pos_x1 run data get entity @s Pos[0] 100
execute store result score @s pos_y1 run data get entity @s Pos[1] 100
execute store result score @s pos_z1 run data get entity @s Pos[2] 100
tp @s ^ ^ ^0.5
execute store result score @s pos_x2 run data get entity @s Pos[0] 100
execute store result score @s pos_y2 run data get entity @s Pos[1] 100
execute store result score @s pos_z2 run data get entity @s Pos[2] 100
scoreboard players operation @s pos_x2 -= @s pos_x1
scoreboard players operation @s pos_y2 -= @s pos_y1
scoreboard players operation @s pos_z2 -= @s pos_z1
execute store result entity @s power[0] double 0.01 run scoreboard players get @s pos_x2
execute store result entity @s power[1] double 0.01 run scoreboard players get @s pos_y2
execute store result entity @s power[2] double 0.01 run scoreboard players get @s pos_z2
tag @s add tagged