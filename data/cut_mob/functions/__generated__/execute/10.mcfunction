#built using mc-build (https://github.com/mc-build/mc-build)

function cut_mob:put_cut_tag
title @a title {"text":"You cut the cow's udder", "color":"dark_purple"}
title @a subtitle {"text":"You now shoot poison milk", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:'{"text":"Cow\'s Udder","color":"gold","italic":false}'},CustomModelData:100007}}}