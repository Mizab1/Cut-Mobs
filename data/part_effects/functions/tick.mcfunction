#built using mc-build (https://github.com/mc-build/mc-build)

execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100001}}]}] run effect give @s speed 2 8 true
execute as @a[scores={right_clicked=1..}, predicate=part_effects:llama_spit] at @s run function part_effects:__generated__/execute/1