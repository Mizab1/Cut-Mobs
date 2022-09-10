#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the Llama's neck", "color":"dark_purple"}
title @a subtitle {"text":"You can now spit", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Llama\'s Head","color":"gold","italic":false}'},CustomModelData:100002}}}