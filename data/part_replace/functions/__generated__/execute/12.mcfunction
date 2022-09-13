#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players remove @s right_clicked 1
scoreboard players set #execute LANG_MC_INTERNAL 0
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] run function part_replace:__generated__/conditional/24
scoreboard players set #execute LANG_MC_INTERNAL 0
execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run function part_replace:__generated__/conditional/25