#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the Wolf's nose", "color":"dark_purple"}
title @a subtitle {"text":"Now you can detect mobs in 30 block readius when sneaking", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Wolf\'s nose","color":"gold","italic":false}'},CustomModelData:100015}}}