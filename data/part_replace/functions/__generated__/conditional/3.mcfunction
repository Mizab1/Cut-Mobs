#built using mc-build (https://github.com/mc-build/mc-build)

item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Llama\'s Head","color":"gold","italic":false}'},CustomModelData:100002} 1
clear @s minecraft:carrot_on_a_stick{CustomModelData:100002} 1
clear @s minecraft:carrot_on_a_stick{CustomModelData:200001}
give @s carrot_on_a_stick{display:{Name:'{"text":"Shoot spit","italic":false}'}, CustomModelData:200001}
scoreboard players set #execute LANG_MC_INTERNAL 1