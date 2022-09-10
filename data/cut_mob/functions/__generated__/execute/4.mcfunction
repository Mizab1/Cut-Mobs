#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the ocelot's tail", "color":"dark_purple"}
title @a subtitle {"text":"You can now run faster", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Ocelot\'s Tail","color":"gold","italic":false}'},CustomModelData:100001}}}