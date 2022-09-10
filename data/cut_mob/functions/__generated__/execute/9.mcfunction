#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the goat's horn", "color":"dark_purple"}
title @a subtitle {"text":"You now have jump boost", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Goat\'s Horns","color":"gold","italic":false}'},CustomModelData:100006}}}