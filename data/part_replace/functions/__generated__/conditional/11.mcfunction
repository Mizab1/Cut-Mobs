#built using mc-build (https://github.com/mc-build/mc-build)

item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Cow\'s Udder","color":"gold","italic":false}'},CustomModelData:100007} 1
item replace entity @s armor.chest with chainmail_chestplate{display:{Name:'{"text":"Cow\'s Udder","color":"gold","italic":false}'},CustomModelData:100007} 1
clear @s minecraft:carrot_on_a_stick{CustomModelData:100007} 1
clear @s minecraft:carrot_on_a_stick{CustomModelData:200002}
give @s carrot_on_a_stick{display:{Name:'{"text":"Shoot Poison Milk","italic":false}'}, CustomModelData:200002}
scoreboard players set #execute LANG_MC_INTERNAL 1