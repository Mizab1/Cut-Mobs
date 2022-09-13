#built using mc-build (https://github.com/mc-build/mc-build)

item replace entity @s armor.head with carrot_on_a_stick{display:{Name:'{"text":"Ghast\'s head","color":"gold","italic":false}'},CustomModelData:100012} 1
clear @s minecraft:carrot_on_a_stick{CustomModelData:100012} 1
clear @s minecraft:carrot_on_a_stick{CustomModelData:200003}
give @s carrot_on_a_stick{display:{Name:'{"text":"Shoot fireball","italic":false}'}, CustomModelData:200003}
scoreboard players set #execute LANG_MC_INTERNAL 1