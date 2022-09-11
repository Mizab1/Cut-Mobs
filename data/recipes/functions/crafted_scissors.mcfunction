#built using mc-build (https://github.com/mc-build/mc-build)

recipe take @s recipes:scissors
advancement revoke @s only recipes:scissors_adv
clear @s minecraft:knowledge_book
function cut_mob:give_scissors