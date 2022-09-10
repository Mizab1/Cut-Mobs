#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the bats's wing", "color":"dark_purple"}
title @a subtitle {"text":"Now you can fly and levitate when sneaking", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:elytra",Count:1b,tag:{display:{Name:'{"text":"Bat\'s Wing","color":"gold","italic":false}'},CustomModelData:100009}}}