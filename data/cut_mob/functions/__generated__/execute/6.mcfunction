#built using mc-build (https://github.com/mc-build/mc-build)

tag @s add cut
data merge entity @s {Pumpkin:0b}
title @a title {"text":"You cut the snowman's head", "color":"dark_purple"}
title @a subtitle {"text":"You bow have infinite snowball", "color":"gold"}
summon item ~ ~ ~ {Item:{id:"minecraft:carved_pumpkin",Count:1b,tag:{display:{Name:'{"text":"Snowman\'s Head","color":"gold","italic":false}'},CustomModelData:100003}}}