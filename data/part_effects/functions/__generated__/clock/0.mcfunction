#built using mc-build (https://github.com/mc-build/mc-build)

schedule function part_effects:__generated__/clock/0 5t
execute as @a if entity @s[nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",Slot:103b,tag:{CustomModelData:100005}}]}] run execute at @s if entity @s[predicate=cut_mob:is_sneaking] run function part_effects:__generated__/execute/1
execute as @a run function part_effects:__generated__/execute/2