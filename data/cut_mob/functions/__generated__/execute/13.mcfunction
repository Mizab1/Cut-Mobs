#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the spider's legs", "color":"dark_purple"}
title @a subtitle {"text":"Now you can climb the wall when sneaking", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Spider\'s legs","color":"gold","italic":false}'},CustomModelData:100010}}}