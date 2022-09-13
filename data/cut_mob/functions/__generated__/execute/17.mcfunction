#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the Turtle's shell", "color":"dark_purple"}
title @a subtitle {"text":"Now you can got heavy resistance", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Turtle\'s shell","color":"gold","italic":false}'},CustomModelData:100014}}}