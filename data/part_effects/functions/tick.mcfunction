#built using mc-build (https://github.com/mc-build/mc-build)

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100001}}]}] run effect give @s speed 2 8 true
execute as @a[scores={right_clicked=1..}, predicate=part_effects:llama_spit] at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100002}}]}] run function part_effects:__generated__/execute/6
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carved_pumpkin",Slot:103b,tag:{CustomModelData:100003}}]}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:snowball"}]}] run give @s snowball 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100004}}]}] run execute unless entity @s[nbt={Inventory:[{id:"minecraft:ender_pearl"}]}] run give @s ender_pearl 1
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100006}}]}] run effect give @s jump_boost 2 3 true
execute as @a[scores={right_clicked=1..}, predicate=part_effects:poison_milk] at @s if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100007}}]}] run function part_effects:__generated__/execute/16
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100008}}]}] run function part_effects:__generated__/execute/21
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:elytra",Slot:102b,tag:{CustomModelData:100009}}]}] run execute if entity @s[predicate=cut_mob:is_sneaking] run effect give @s levitation 1 4 true
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100010}}]}] run function part_effects:__generated__/execute/24