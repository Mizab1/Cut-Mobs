#built using mc-build (https://github.com/mc-build/mc-build)

execute at @s if entity @s[predicate=cut_mob:is_sneaking, tag=!spawned_spider] run function part_effects:__generated__/execute/26
execute at @s positioned ~ ~1 ~ if block ~0.5 ~ ~ #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~ ~ ~0.5 #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~-0.5 ~ ~ #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~ ~ ~-0.5 #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~0.5 ~ ~0.5 #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~-0.5 ~ ~-0.5 #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~0.5 ~ ~-0.5 #blocks:solid run effect give @s levitation 1 5 true
execute at @s positioned ~ ~1 ~ if block ~-0.5 ~ ~0.5 #blocks:solid run effect give @s levitation 1 5 true