#built using mc-build (https://github.com/mc-build/mc-build)

execute at @s if entity @s[predicate=cut_mob:is_sneaking, tag=!spawned_spider] run function part_effects:__generated__/execute/25
execute at @s unless block ~0.5 ~ ~ air run effect give @s levitation 1 5 true
execute at @s if block ~0.5 ~ ~ air run effect clear @s levitation
execute at @s unless block ~ ~ ~0.5 air run effect give @s levitation 1 5 true
execute at @s if block ~ ~ ~0.5 air run effect clear @s levitation
execute at @s unless block ~-0.5 ~ ~ air run effect give @s levitation 1 5 true
execute at @s if block ~-0.5 ~ ~ air run effect clear @s levitation
execute at @s unless block ~ ~ ~-0.5 air run effect give @s levitation 1 5 true
execute at @s if block ~ ~ ~-0.5 air run effect clear @s levitation
execute at @s unless block ~0.5 ~ ~0.5 air run effect give @s levitation 1 5 true
execute at @s if block ~0.5 ~ ~0.5 air run effect clear @s levitation
execute at @s unless block ~-0.5 ~ ~-0.5 air run effect give @s levitation 1 5 true
execute at @s if block ~-0.5 ~ ~-0.5 air run effect clear @s levitation
execute at @s unless block ~0.5 ~ ~-0.5 air run effect give @s levitation 1 5 true
execute at @s if block ~0.5 ~ ~-0.5 air run effect clear @s levitation
execute at @s unless block ~-0.5 ~ ~0.5 air run effect give @s levitation 1 5 true
execute at @s if block ~-0.5 ~ ~0.5 air run effect clear @s levitation